package com.onair.proj.voc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VoCController {
	private static final Logger logger
		=LoggerFactory.getLogger(VoCController.class);
	
	@GetMapping("/voc/voc_detail")
	public String VoC_get() {
		logger.info("고객의 소리 화면");
		return "/voc/voc_detail";
	}
}
