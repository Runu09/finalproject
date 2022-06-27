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

@Controller
@RequestMapping("/member")
public class KakaoController {
	private final Logger logger
		=LoggerFactory.getLogger(KakaoController.class);
	
	@RequestMapping("/kakao")
	public String kakaoLogin(@RequestParam(required = false) String nick,
			@RequestParam(required = false) String email, 
			@RequestParam(required = false) String img, 
			HttpServletResponse response,
			HttpServletRequest request,
			Model model) {
		logger.info("카카오 로그인 처리, 파라미터 nick={},email={},img={}",nick,email,img);
		
		String msg="카카오 로그인 실패", url="/";
		HttpSession session = request.getSession();
		session.setAttribute("memId",nick );
		session.setAttribute("memName",nick );
		
		msg=nick+"님 로그인 되었습니다.";
		url="/main/main.do";
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "/common/message";
	}
}
