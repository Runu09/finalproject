package com.onair.proj.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.admin.model.AdminService;
import com.onair.proj.admin.model.AdminVO;
import com.onair.proj.voc.controller.VoCController;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {
	private static final Logger logger
		=LoggerFactory.getLogger(AdminController.class);
	
	private final AdminService adminService;
	
	@RequestMapping("/adminMain")
	public String adminMain() {
		logger.info("관리자 메인화면");
		return "/admin/adminMain";
	}
	
	@GetMapping("/adminRegister")
	public void adminRegister_get() {
		logger.info("관리자 등록 화면");
		
	}
	
	@PostMapping("/adminRegister")
	public String adminRegister_post(@ModelAttribute AdminVO vo,
			Model model) {
		logger.info("관리자 등록 화면, 파라미터 vo={}",vo);
		
		int cnt= adminService.adminInsert(vo);
		logger.info("관리자 등록 결과, 파라미터 cnt=", cnt);
		return "/admin/adminRegister";
	}
	
	@GetMapping("/adminLogin")
	public String adminLogin() {
		logger.info("로그인 화면");
		return "/admin/adminLogin";
	}
	@PostMapping("/adminLogin")
	public String adminLogin(@ModelAttribute AdminVO vo,
			HttpServletRequest request, HttpServletResponse response,
			Model model) {
		logger.info("로그인 처리 결과 ");
		return "/admin/adminLogin";
	}
	
	@RequestMapping("/allUser")
	public String allUser() {
		logger.info("전체 유저 조회 화면");
		return "/admin/allUser";
	}
	
}
