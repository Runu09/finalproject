package com.onair.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjController {
	@RequestMapping("/about/about.do")
	public String about() {
		return "/about/about";
	}
	
	@RequestMapping("/main/main.do")
	public String main() {
		return "/main/main";
	}
	
	@RequestMapping("/customer/information.do")
	public String information() {
		return "/customer/information";
	}
	
	@RequestMapping("/booking/flight-booking.do")
	public String booking() {
		return "/booking/flight-booking";
	}
	
	@RequestMapping("/booking/flight-booking-addons.do")
	public String bookingAddons() {
		return "/booking/flight-booking-addons";
	}
	
	@RequestMapping("/booking/flight-booking-failed.do")
	public String bookingFailed() {
		return "/booking/flight-booking-failed";
	}
	
	@RequestMapping("/booking/flight-booking-payment.do")
	public String bookingPayment() {
		return "/booking/flight-booking-payment";
	}
	
	@RequestMapping("/booking/flight-booking-success.do")
	public String bookingSuccess() {
		return "/booking/flight-booking-success";
	}
	
	@RequestMapping("/booking/flight-not-found.do")
	public String bookingNotFound() {
		return "/booking/flight-not-found";
	}
	
	@RequestMapping("/booking/flight-round-trip.do")
	public String bookingRoundTrip() {
		return "/booking/flight-round-trip";
	}

	
	@GetMapping("/lost/write.do")
	public void lost_get() {
		
	}
	@GetMapping("/member/register.do")
	public void register_get() {
		
	}
	
	@RequestMapping("/customer/faq.do")
	public String faq() {
		return "/customer/faq";
	}
	
	@GetMapping("/member/mypage.do")
	public void mypage_get() {
		
	}


}
