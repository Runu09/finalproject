package com.onair.proj.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.voc.controller.VoCController;

@Controller
public class AdminController {
	private static final Logger logger
	=LoggerFactory.getLogger(VoCController.class);
	
	@RequestMapping("/admin/allUser")
	public String allUser() {
		logger.info("전체 유저 조회 화면");
		return "/admin/allUser";
	}
	@RequestMapping("/admin/adminMain")
	public String adminMain() {
		logger.info("관리자 메인화면");
		return "/admin/adminMain";
	}
	@RequestMapping("/admin/adminLogin")
	public String adminLogin() {
		logger.info("로그인 화면");
		return "/admin/adminLogin";
	}
	@RequestMapping("/admin/adminRegister")
	public String adminRegister() {
		logger.info("회원가입 화면");
		return "/admin/adminRegister";
	}
}
