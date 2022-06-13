package com.onair.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjController {
	@RequestMapping("/about/about.do")
	public String about() {
		return "/about/about";
	}
	
	@RequestMapping("/main/main.do")
	public String main() {
		return "/main/main";
	}
	
	@RequestMapping("/customer/information.do")
	public String information() {
		return "/customer/information";
	}
}
