package com.onair.proj.kakao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class KakaoController {
	private final Logger logger
		=LoggerFactory.getLogger(KakaoController.class);
	
	private final KakaoServiceImpl kakaoServiceImpl;
	
	@RequestMapping("/kakao")
	public String kakaoLogin(@RequestParam(value = "code", required = false)
			String code) {
		logger.info("카카오 로그인 파라미터 code={}", code);
		/*
		 * String access_Token = kakaoServiceImpl.getAccessToken(code);
		 * System.out.println("###access_Token###"+ access_Token);
		 */
		
		return "/member/kakao";
		
		
	}
	
}
