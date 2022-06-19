package com.onair.proj.voc.controller;



import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.voc.model.VocService;
import com.onair.proj.voc.model.VocVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/voc")
public class VoCController {
	private static final Logger logger
		=LoggerFactory.getLogger(VoCController.class);
	
	private final VocService vocService;
	
	//안내화면
	@RequestMapping("/voc_main")
	public String VocMain() {
		logger.info("고객의 소리 메인화면");
		return "/voc/voc_main";
	}
	
	//글등록
	@GetMapping("/voc_write")
	public String VocWrite_get() {
		logger.info("고객의 소리 등록하기 화면");
		return "/voc/voc_write";
	}
	
	@PostMapping("/voc_write")
	public String VocWrite_post(@ModelAttribute VocVO vo) {
		logger.info("고객의 소리 글등록 처리, 파라미터 vo={}", vo);
		
		int cnt=vocService.insertVoc(vo);
		logger.info("글등록 처리 결과, cnt={}", cnt);
		
		return "redirect:/voc/voc_list";
	}
	
	@RequestMapping("/voc_list")
	public String VocList_get(Model model) {
		logger.info("고객의 소리 리스트 화면");
		
		List<VocVO> list=vocService.selectAll();
		logger.info("고객의 소리 리스트 조회결과 list.size={}", list.size());
		
		VocVO vo=list.get(0);
		logger.info("test vo={}", vo);
		model.addAttribute("vo",vo);
		model.addAttribute("list", list);
		
		return "/voc/voc_list";
	}
	
	@RequestMapping("/updateCount")
	public String updateCount(@RequestParam(defaultValue = "0") int bNo,Model model) {
		logger.info("조회수 증가, 파라미터 bNo={}",bNo);
		
		if(bNo==0) {
			model.addAttribute("msg","잘못된 url!");
			model.addAttribute("url","/voc/voc_list");
			return "/common/message";
		}
		
		int cnt=vocService.updateCount(bNo);
		logger.info("조회수 증가 결과, cnt={}", cnt);
		
		return "redirect:/voc/voc_detail?bNo="+bNo;
	}
	
	@RequestMapping("/voc_detail")
	public String voc_detail(@RequestParam(defaultValue = "0") int bNo,Model model) {
		logger.info("voc 상세보기 파라미터 bNo={}", bNo);
		
		if(bNo==0) {
			model.addAttribute("msg", "잘못된 url!");
			model.addAttribute("url", "/voc/voc_list");
			return "/common/message";
		}
		
		VocVO vo=vocService.selectByNo(bNo);
		logger.info("상세보기 결과 vo={}",vo);
		
		model.addAttribute("vo", vo);
		
		return "/voc/voc_detail";
	}
}
