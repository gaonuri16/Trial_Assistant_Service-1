package com.spring.pr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.pr.user.service.IUserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private IUserService service;
	
	//기관/개인 선택 페이지로 이동 
	@GetMapping("/joinSelect")
	public String joinSelect() {
		System.out.println("user/joinSelect");
		return "user/joinSelect";
	}
	
	@GetMapping("/joinUser")
	public String joinUser() {
		System.out.println("user/joinUser");
		return "user/joinUser";
	}
	
	@GetMapping("/joinIns")
	public String joinIns() {
		System.out.println("user/joinIns");
		return "user/joinIns";
	}
	
	//아이디 중복 확인(비동기)  
//	@ResponseBody
//	@PostMapping("idCheck")
//	public String idCeck(@RequestBody String jOINID) {
//		int result = service.idCheck(jOINID);
//		if(result == 1) {
//			return "존재하는 아이디";
//		}else {
//			return "ok";
//		}
//		
//	
//		}
	
	
	}
	
	
	
	
	
	
	
	

	
	

