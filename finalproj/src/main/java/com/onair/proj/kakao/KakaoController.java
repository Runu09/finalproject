package com.onair.proj.kakao;
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
			Model model) {
		logger.info("카카오 로그인 처리, 파라미터 nick={},email={},img={}",nick,email,img);
		return "/main/main";
	}
}
