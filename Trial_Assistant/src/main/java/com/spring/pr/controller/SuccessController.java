package com.spring.pr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/apply")
public class SuccessController {
	
	@GetMapping("/success")
	public void success() {}
	
}
