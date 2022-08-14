package com.spring.pr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		service.regist(notice);
		return "redirect:/notice/notice_list";
	}
	
	@GetMapping("/list")
	public String listNotice(Model model) {
		System.out.println("/notice/list : GET");
//		model.addAttribute("notices", service.getList());
		
		return "notice/notice_list";
	}
	
	@GetMapping("/content")
	public String contentBoard(Model model) {
		System.out.println("/notice/content : GET");
//		model.addAttribute("notice", service.getContent(noticeNo));
		return "notice/notice_detail";
	}
	
	
	@GetMapping("/modify")
	public String modifyoard() {
		System.out.println("/notice/modify : POST");
//		service.update(notice);
		return "notice/notice_modify_admin";
	}
	

}
