package com.spring.pr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.pr.command.NoticeVO;
import com.spring.pr.notice.service.INoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	// 화면 확인용 controller 
	
	@Autowired
	private INoticeService service;
	
	@GetMapping("/write")
	public String write() {
		System.out.println("/notice/write : GET");
		return "notice/notice_regist_admin";
	}
	
	@PostMapping("/write")
	public String write(NoticeVO notice) {
		System.out.println("/notice/write : POST");
		notice.setMNGRID("managerID");
		System.out.println("작성 공지 내용 : " + notice.toString());
		service.regist(notice);
		return "redirect:/notice/list";
	}
	
	@GetMapping("/list")
	public String listNotice(Model model) {
		System.out.println("/notice/list : GET");
		model.addAttribute("noticeList", service.getList());
		
		return "notice/notice_list";
	}
	
	@GetMapping("/content/{noticeNum}")
	public String contentBoard(@PathVariable int noticeNum,  Model model) {
		System.out.println("/notice/content : GET");
		
		model.addAttribute("notice", service.getContent(noticeNum));
		return "notice/notice_detail";
	}
	
	
	@GetMapping("/modify")
	public String moveModify(@RequestParam("num") int noticeNum, Model model) {
		System.out.println("/notice/modify : GET");
		System.out.println("공지사항 수정 번호 확인 : " + noticeNum );
		
		model.addAttribute("modiNoti", service.getContent(noticeNum)); 
		
		return "notice/notice_modify_admin";
	}
	
	@PostMapping("/Modify")
	public String update(NoticeVO notice, RedirectAttributes ra) {
		System.out.println("/notice/update : POST");
		
		service.update(notice);
		
		return "redirect:/notice/notice_list";
	}
}
