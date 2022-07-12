package com.onair.proj.kakao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class KakaoController {
	private final Logger logger
		=LoggerFactory.getLogger(KakaoController.class);
	
	private final MemberService memberService;
	@RequestMapping("/kakao")
	public String kakaoLogin(@RequestParam(required = false) String nick,
			@RequestParam(required = false) String email, 
			@RequestParam(required = false) String img, 
			HttpServletResponse response,
			HttpServletRequest request,
			Model model) {
		logger.info("카카오 로그인 처리, 파라미터 nick={},email={}, img={}",nick,email, img);
		
		MemberVO vo = new MemberVO();
		
		int result =0;
		String userId= email.substring(0, email.indexOf("@"));
		logger.info("userId={}", userId);
		
		result=memberService.duplicateId(userId);
		logger.info("아이디 중복확인 result={}", result);
		
		String msg="카카오 로그인 실패", url="/";
		
		if(result==MemberService.USABLE_ID) {
			vo.setMemId(userId);
			vo.setMemPwd("111");
			vo.setMemName(nick);
			vo.setMTel1("010");
			vo.setMTel2("9876");
			vo.setMTel3("5431");
			vo.setMEmail1(email.substring(0, email.indexOf("@")));
			vo.setMEmail2(email.substring(email.indexOf("@")+1));
			vo.setMBirthday("19991221");
			vo.setMZipcode("03721");
			vo.setMAdd1("서울 서대문구 신촌동 1-19");
			vo.setMAdd2("2");
			
			
			
			int cnt= memberService.memberInsert(vo);
			logger.info("회원가입 결과 cnt={}", cnt);
			
			if(cnt>0) {
				HttpSession session = request.getSession();
				session.setAttribute("memId",userId );
				session.setAttribute("memName",nick );
				
				session.setAttribute("type", "kakao");
				
				msg=nick+"님 로그인 되었습니다.";
				url="/main/main.do";
				
				model.addAttribute("msg", msg);
				model.addAttribute("url", url);
			}
			return "/common/message";
		}
		
		
		HttpSession session = request.getSession();
		session.setAttribute("memId",userId );
		session.setAttribute("memName",nick );
		
		session.setAttribute("type", "kakao");
		
		msg=nick+"님 로그인 되었습니다.";
		url="/main/main.do";
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
}
