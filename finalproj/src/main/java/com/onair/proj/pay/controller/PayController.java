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

import com.onair.proj.member.controller.MemberController;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.passenger.model.PassengerService;
import com.onair.proj.passenger.model.PassengerVO;
import com.onair.proj.pay.model.PayService;
import com.onair.proj.pay.model.PayVO;
import com.onair.proj.reservation.model.ReservationService;
import com.onair.proj.reservation.model.ReservationVO;
import com.onair.proj.schedule.model.ScheduleService;
import com.onair.proj.schedule.model.ScheduleVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class PayController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	private final ScheduleService scheduleService;
	private final ReservationService reservationService;
	private final PassengerService passengerService;
	private final PayService payService;
	
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
				@ModelAttribute PassengerVO pVo, @ModelAttribute PayVO payVo, @RequestParam String total, @RequestParam(defaultValue = "0") String mMileage) {
		
		try {
			String memId=(String) session.getAttribute("memId");
			MemberVO memVo=memberService.selectByMemId(memId);
			
			int rCnt=reservationService.insertReservation(rVo);
			logger.info("rcnt={}", rCnt);
			
			int pCnt=passengerService.insertPassenger(pVo);
			logger.info("pcnt={}", pCnt);
			
			int payCnt=payService.insertPay(payVo);
			logger.info("paycnt={}", payCnt);
			
			int mCnt1=memberService.updateMileageM(mMileage, memId);
			logger.info("mcnt1={}", mCnt1);
			
			int mCnt2=memberService.updateMileageP(total, memId);
			logger.info("mcnt2={}", mCnt2);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	

		/*
		 * String msg="결제에 실패하였습니다.", url="/booking/flight-booking-failed.do";
		 * 
		 * if(rCnt>0 && pCnt>0) { msg="결제가 완료되었습니다..";
		 * url="/booking/flight-booking-success.do"; }
		 * 
		 * model.addAttribute("msg", msg); model.addAttribute("url", url);
		 * 
		 * return "/common/message";
		 */
    	
	}
}