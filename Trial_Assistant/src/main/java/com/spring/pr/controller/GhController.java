package com.spring.pr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.pr.command.GhVO;
import com.spring.pr.gh.service.IGhService;

@Controller
@RequestMapping("/apply")
public class GhController {
	
	@Autowired
	private IGhService service;
	
	//글 등록 화면
	@GetMapping("/ghRegist")
	public void ghRegist() {}
	
	//글 등록 처리
	@PostMapping("/registForm")
	public String registForm(GhVO gh, MultipartHttpServletRequest files,RedirectAttributes ra) {
		service.regist(gh);

		ra.addFlashAttribute("msg", "정상 등록 처리되었습니다.");
		return "redirect:/apply/success";
	}

}
