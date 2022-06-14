package com.onair.proj.voc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VoCController {
	private static final Logger logger
		=LoggerFactory.getLogger(VoCController.class);
	
	@GetMapping("/voc/voc_list")
	public String VocList_get() {
		logger.info("고객의 소리 리스트 화면");
		return "/voc/voc_list";
	}
	
	@GetMapping("/voc/voc_write")
	public String VocWrtie_get() {
		logger.info("고객의 소리 등록하기 화면");
		return "/voc/voc_write";
	}
}
