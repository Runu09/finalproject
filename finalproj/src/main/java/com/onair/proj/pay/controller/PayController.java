package com.onair.proj.pay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.note.controller.NoteController;
import com.onair.proj.passenger.model.PassengerService;
import com.onair.proj.passenger.model.PassengerVO;
import com.onair.proj.reservation.model.ReservationService;
import com.onair.proj.reservation.model.ReservationVO;
import com.onair.proj.schedule.model.ScheduleService;
import com.onair.proj.schedule.model.ScheduleVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class PayController {
	private final MemberService memberService;
	private final ScheduleService scheduleService;
	private final ReservationService reservationService;
	private final PassengerService passengerService;
	
	@RequestMapping("/booking/flight-booking-payment.do")
	public void bookingPayment(HttpServletRequest req, Model model, HttpSession session) {
		String memId=(String) session.getAttribute("memId");
    	MemberVO memVo=memberService.selectByMemId(memId);
    	String adult=req.getParameter("adult"); //성인 인원수
    	String child=req.getParameter("child"); //아동 인원수
    	String sNo=req.getParameter("sNo");
    	String total=req.getParameter("total");
    	String mileTotal=req.getParameter("mileTotal");
    	String mMileage=req.getParameter("mMileage");
    	String[] pName=req.getParameterValues("pName");
    	String[] pSeat=req.getParameterValues("pSeat");
    	String[] pBirth=req.getParameterValues("pBirth");
    	String[] pCon=req.getParameterValues("pCon");
    	ScheduleVO vo=scheduleService.selectBySName(Integer.parseInt(sNo));

    	model.addAttribute("memVo",memVo);
    	model.addAttribute("schedule", vo);
    	model.addAttribute("adult",adult);
		model.addAttribute("child",child);
		model.addAttribute("mMileage", mMileage);
		model.addAttribute("total", total);
		model.addAttribute("mileTotal", mileTotal);
		model.addAttribute("pName", pName);
		model.addAttribute("pSeat", pSeat);
		model.addAttribute("pBirth", pBirth);
		model.addAttribute("pCon", pCon);	
	}
	
	@RequestMapping("/booking/flight-booking-success.do")
	public void success(HttpServletRequest req, Model model, HttpSession session, @ModelAttribute ReservationVO rVo, 
				@ModelAttribute PassengerVO pVo) {
		String memId=(String) session.getAttribute("memId");
    	MemberVO memVo=memberService.selectByMemId(memId);
    	String mMileage=req.getParameter("mMileage");
    	String total=req.getParameter("total");
    	
    	int rCnt=reservationService.insertReservation(rVo);
    	int pCnt=passengerService.insertPassenger(pVo);
    	int mCnt1=memberService.updateMileageM(Integer.parseInt(mMileage), memId);
    	int mCnt2=memberService.updateMileageP(Integer.parseInt(total), memId);
    	
	}
}