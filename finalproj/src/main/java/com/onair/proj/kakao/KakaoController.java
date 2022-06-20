package com.onair.proj.kakao;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class KakaoController {
	private final Logger logger
		=LoggerFactory.getLogger(KakaoController.class);
	
}
