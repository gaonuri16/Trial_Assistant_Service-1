package com.spring.pr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.pr.ts.service.ITsService;

@Controller
@RequestMapping("/apply")
public class transController {
	
	@Autowired
	private ITsService service;
	
	@GetMapping("/tsRegist")
	public void tsRegist() {}

}
