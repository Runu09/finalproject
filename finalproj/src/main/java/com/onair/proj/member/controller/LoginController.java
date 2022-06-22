package com.onair.proj.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

	
@Controller
@RequestMapping("/login")
@RequiredArgsConstructor
public class LoginController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(LoginController.class);

	private final MemberService memberService;
	
	@GetMapping("/login.do")
	public String login_get() {
		logger.info("로그인 화면");

		return "/member/login";
	}
	
	@PostMapping("/login.do")
	public String login_post(@ModelAttribute MemberVO vo,
			@RequestParam(required = false) String chkSaveId, HttpServletRequest request, 
			HttpServletResponse response, Model model) {
		logger.info("로그인 처리, 파라미터 vo={}, chkSaveId={}",vo, chkSaveId);

		int result=memberService.checkLogin(vo.getMemId(), vo.getMemPwd());
		logger.info("로그인 처리 결과 result={}", result);
		
		String msg="로그인 처리 실패", url="/login/login.do";

		if(result==MemberService.LOGIN_OK) {
			//회원정보 조회
			MemberVO memVo=memberService.selectByMemId(vo.getMemId());
			logger.info("로그인 처리 - 회원정보 조회결과 memVo={}", memVo);
			
			//[1] session에 저장
			HttpSession session= request.getSession();
			session.setAttribute("memId", vo.getMemId());
			session.setAttribute("memName", memVo.getMemName());
			
			//[2] 쿠키에 저장 
			Cookie ck=new Cookie("ckMemId", memVo.getMemId());
			ck.setPath("/");

			if (chkSaveId != null) {	//아이디 저장하기 체크한 경우
				ck.setMaxAge(1000 * 24 * 60 * 60); 
				response.addCookie(ck);
			} else {
				ck.setMaxAge(0);				//쿠키 제거
				response.addCookie(ck);
			}
			
			msg=memVo.getMemName() +"님 로그인 되었습니다."; 
			url="/main/main.do";

		}
		else if(result==MemberService.DISAGREE_PWD){ 
			msg="비밀번호가 일치하지 않습니다."; 
		}
		else if(result==MemberService.NONE_USERID) { 
			msg="해당 아이디가 존재하지 않습니다.";
		}	
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);

		return "/common/message";
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		logger.info("로그아웃");
		
		session.removeAttribute("memId");
		session.removeAttribute("memName");
		
		return "redirect:/main/main.do";
	}
	
}
