package com.onair.proj.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.admin.model.AdminService;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ExcelController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(ExcelController.class);
	
	private final AdminService adminService;
	
	@RequestMapping("/excelDown")
	public void ExcelDown(@ModelAttribute MemberVO memberVo, HttpServletResponse response) {
		logger.info("Excel 다운로드=searchVo={}, response={}", memberVo, response);
		List<MemberVO> alist= adminService.getExcelDown(memberVo, response);
		logger.info("Excel 다운로드, alist={}", alist);
	}
}
