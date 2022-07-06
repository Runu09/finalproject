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
		
		if(memId==null || memId.isEmpty()) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("url", "/login/login.do");

			return "/common/message";
		}
		
		MemberVO vo = memberService.selectByMemId(memId);
		logger.info("마이페이지 메인 조회 결과 vo={}", vo);
		
		model.addAttribute("vo" , vo);
		
		return "/mypage/mypageMain";
	}

	
	//이용내역조회
	@GetMapping("/bookings.do")
	public String bookings_get(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		logger.info("이용내역 화면, 파라미터 memId={}", memId);
		
		MemberVO vo = memberService.selectByMemId(memId);
		logger.info("회원 정보 조회 결과 vo={}", vo);
		
		model.addAttribute("vo" , vo);
		
		return "/mypage/bookings";
	}
	
	
	/*
	@PostMapping("/editMem.do")
	public String editMem_post(@ModelAttribute MemberVO vo,
			@RequestParam String mEmail3, HttpSession session,
			Model model) {
		String memId = (String)session.getAttribute("memId");
		vo.setMemId(memId);
		logger.info("회원정보수정, MemberVO={}, mEmail3={}", vo, mEmail3);
		
		//hp처리
		String mTel1=vo.getMTel1(); 
		String mTel2=vo.getMTel2(); 
		String mTel3=vo.getMTel3();
		
		if(mTel2==null || vo.getMTel2().isEmpty() 
				|| mTel3==null || vo.getMTel3().isEmpty()) {
			mTel1="";
			mTel2="";
			mTel3="";
		}
		vo.setMTel1(mTel1);
		vo.setMTel2(mTel2);
		vo.setMTel3(mTel3);
		
		//email처리
		String mEmail1=vo.getMEmail1();		
		String mEmail2=vo.getMEmail2();
		
		if(mEmail1==null || mEmail1.isEmpty()) {
			mEmail1="";
			mEmail2="";
		}else {
			if(mEmail2.equals("etc")) {
				mEmail2=mEmail3;
			}
		}
		vo.setMEmail1(mEmail1);
		vo.setMEmail2(mEmail2);
		
		//비밀번호 체크
		String msg="비밀번호 체크 실패", url="/member/editMem.do";
		int result=memberService.checkLogin(vo.getMemId(), vo.getMemPwd());
		logger.info("비밀번호 체크 결과, result={}", result);
		
		if(result==memberService.LOGIN_OK) {
			int cnt=memberService.memberUpdate(vo);
			logger.info("회원정보 수정 결과, cnt={}", cnt);
			
			if(cnt>0) {
				msg="회원정보를 수정하였습니다.";
			}else {
				msg="회원정보 수정을 실패하였습니다.";
			}
		}else if(result==memberService.DISAGREE_PWD) {
			msg="비밀번호가 일치하지 않습니다";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
*/
}
