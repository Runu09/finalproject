package com.onair.proj.pay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayController {
	
	@RequestMapping("/booking/flight-booking-payment.do")
	public String bookingPayment() {
		return "/booking/flight-booking-payment";
	}
}
