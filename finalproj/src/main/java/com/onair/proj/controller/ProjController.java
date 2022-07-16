package com.onair.proj.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onair.proj.airport.controller.AirportController;
import com.onair.proj.note.model.NoteService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProjController {
	
	private final NoteService noteService;
	private static final Logger logger
	=LoggerFactory.getLogger(ProjController.class);

	
	@RequestMapping("/about/about.do")
	public String about() {
		return "/about/about";
	}

	/*
	 * @RequestMapping("/main/main.do") public String main() { return "/main/main";
	 * }
	 */

	/*
	 * @RequestMapping("/customer/notice.do") public String notice() { return
	 * "/customer/notice"; }
	 */

	@RequestMapping("/customer/noticeDetail.do")
	public String noticeDetail() {
		return "/customer/noticeDetail";
	}

	@RequestMapping("/customer/noticeWrite.do")
	public String noticeWrite() {
		return "/customer/noticeWrite";
	}

	@RequestMapping("/customer/terms.do")
	public String terms() {
		return "/customer/terms";
	}

	@RequestMapping("/customer/information.do")
	public String information() {
		return "/customer/information";
	}

	/*
	 * @RequestMapping("/booking/flight-booking.do") public String booking() {
	 * return "/booking/flight-booking"; }
	 */

	@RequestMapping("/booking/flight-booking-addons.do")
	public String bookingAddons() {
		return "/booking/flight-booking-addons";
	}

	@RequestMapping("/booking/flight-booking-failed.do")
	public String bookingFailed() {
		return "/booking/flight-booking-failed";
	}



	/*
	 * @RequestMapping("/booking/flight-booking-success.do") public String
	 * bookingSuccess() { return "/booking/flight-booking-success"; }
	 */

	@RequestMapping("/booking/flight-not-found.do")
	public String bookingNotFound() {
		return "/booking/flight-not-found";
	}

	/*
	 * @RequestMapping("/booking/flight-round-trip.do") public String
	 * bookingRoundTrip() { return "/booking/flight-round-trip"; }
	 */

	@RequestMapping("/customer/faq.do")
	public String faq() {
		return "/customer/faq";
	}


	@RequestMapping("/customer/airport.do")
	public String airport() {
		return "/customer/airport";
	}

	@RequestMapping("/inc/top")
	@ResponseBody
	public String incTop(String memId) {
		String count=null;
		if(memId!=null&&!memId.isEmpty()) {

			count=Integer.toString(noteService.newNoteCount(memId));
			
		}

		return count;
	}


}
