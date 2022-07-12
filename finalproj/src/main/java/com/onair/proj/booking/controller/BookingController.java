package com.onair.proj.booking.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.admin.controller.AdminController;


import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/booking")
@RequiredArgsConstructor
public class BookingController {
	private static final Logger logger
	=LoggerFactory.getLogger(AdminController.class);

	private final BookingService bookingService;
	
	/*
	@GetMapping("/eTicket.do")
	public String eTicket() {
		return "/booking/eTicket";
	}
	*/
	
	
	@RequestMapping("/eTicket.do")
	public String cartList(@RequestParam int rNo, Model model) {
		
		logger.info("eTickt, 파라미터 rNo={}", rNo);
		
		/*
		if(rNo==0) {
			model.addAttribute("msg", "잘못된 url!");
			model.addAttribute("url", "/main/main.do");
			return "/common/message";
		}
		*/
		TicketViewVO vo=bookingService.ticketDetail(rNo);
		logger.info("eTickt 조회 결과, vo={}", vo);
		
		model.addAttribute("vo", vo);
	
		
		return "/booking/eTicket";
	}
}
