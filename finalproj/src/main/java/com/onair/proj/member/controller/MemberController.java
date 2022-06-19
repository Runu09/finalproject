package com.onair.proj.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);

	private final MemberService memberService;
	
	@GetMapping("/register.do")
	public void register() {
		logger.info("회원가입 화면");

	}

	@PostMapping("/register.do")
	public String join(@ModelAttribute MemberVO vo, Model model) {
		logger.info("회원가입 처리, 파라미터 vo={}", vo);


		int cnt=memberService.memberInsert(vo);
		
		logger.info("회원가입 결과, cnt={}", cnt);

		String msg="회원가입 실패", url="/member/register.do";
		
		if(cnt>0) {
			msg="회원가입되었습니다.";
			url="/member/login.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	
}








