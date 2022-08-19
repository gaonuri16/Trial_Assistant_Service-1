package com.spring.pr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.pr.apply.service.IApplyService;
import com.spring.pr.command.AncmtVO;


@Controller
@RequestMapping("/apply")
public class ApplyController {
	
	@Autowired
	private IApplyService service;
	
	@GetMapping("/applyList")
	public void list() {}

//	@PostMapping("/applyList")
//	public String write(AncmtVO ancmt) {
//		System.out.println("/notice/write : POST");
//		service.regist(ancmt);
//		return "redirect:/notice/notice_list";
//	}

//	@GetMapping("/list")
//	public String listNotice(Model model) {
//		System.out.println("/notice/list : GET");
////		model.addAttribute("notices", service.getList());
//
//		return "notice/notice_list";
//	}
//
//	@GetMapping("/content")
//	public String contentBoard(Model model) {
//		System.out.println("/notice/content : GET");
////		model.addAttribute("notice", service.getContent(noticeNo));
//		return "notice/notice_detail";
//	}
//
//
//	@GetMapping("/modify")
//	public String modifyoard() {
//		System.out.println("/notice/modify : POST");
////		service.update(notice);
//		return "notice/notice_modify_admin";
//	}


}