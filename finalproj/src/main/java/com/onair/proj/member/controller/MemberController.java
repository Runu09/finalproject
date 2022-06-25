package com.onair.proj.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String register_get() {
		logger.info("회원가입 화면");
		return "/member/register";

	}

	@PostMapping("/register.do")
	public String register_post(@ModelAttribute MemberVO vo, 
			@RequestParam String mEmail3,
			Model model) {
		logger.info("회원가입 처리, 파라미터 vo={}, mEmail3={}", vo,mEmail3);
		

		if(vo.getMEmail2().equals("etc")) {
			vo.setMEmail2(mEmail3);
		}
		
		int cnt=memberService.memberInsert(vo);
		
		logger.info("회원가입 결과, cnt={}", cnt);

		String msg="회원가입 실패", url="/member/register.do";
		
		if(cnt>0) {
			msg="회원가입되었습니다.";
			url="/login/login.do";
		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "/common/message";
	}

	@RequestMapping("/dupId.do")
	@ResponseBody
	public boolean dupId(@RequestParam String memId) {
		logger.info("아이디 중복확인, 파라미터 memId={}", memId);

		int result=memberService.duplicateId(memId);

		logger.info("아이디 중복확인 결과, result={}", result);

		boolean bool=false;	
		if(result==MemberService.USABLE_ID) {
			bool=true;		//사용가능
		}else if(result==MemberService.UNUSABLE_ID) {
			bool=false;		//사용불가
		}
		return bool;
	}
	
	/* 마이페이지 */
	//회원정보수정
	@GetMapping("/editMem.do")
	public String editMem_get(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		logger.info("회원 정보 수정 화면, 파라미터 memId={}", memId);
		
		MemberVO vo = memberService.selectByMemId(memId);
		logger.info("회원 정보 조회 결과 vo={}", vo);
		
		model.addAttribute("vo" , vo);
		
		return "/member/editMem";
	}
	

	@GetMapping("/deleteMem.do")
	public String delete_get() {
		logger.info("회원탈퇴 화면");
		return "/member/deleteMem";
	}

	
	@GetMapping("/editPwd.do")
	public String editPwd_get() {
		logger.info("비밀번호변경 화면");
		return "/member/editPwd";
	}
}








