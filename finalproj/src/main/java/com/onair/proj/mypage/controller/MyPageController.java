package com.onair.proj.mypage.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.member.controller.MemberController;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;

	@GetMapping("/mypageMain.do")
	public String mypagemene_get(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		logger.info("마이페이지 메인, 파라미터 memId={}", memId);
		
		MemberVO vo = memberService.selectByMemId(memId);
		logger.info("마이페이지 메인 조회 결과 vo={}", vo);
		
		model.addAttribute("vo" , vo);
		
		return "/mypage/mypageMain";
	}
	

	@GetMapping("/bookings.do")
	public void bookings_get() {
		
	}
	
}
