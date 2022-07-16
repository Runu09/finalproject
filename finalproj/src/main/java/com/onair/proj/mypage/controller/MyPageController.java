package com.onair.proj.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;
import com.onair.proj.common.BookingSearchVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.controller.MemberController;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.pay.model.PayService;
import com.onair.proj.reservation.model.ReservationService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	private final MypageService mypageService;
	private final ReservationService reservationService;
	private final PayService payService;

	@GetMapping("/mypageMain.do")
	public String mypagemain_get(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		logger.info("마이페이지 메인, 파라미터 memId={}", memId);
		
		MemberVO vo = memberService.selectByMemId(memId);
		List<TicketViewVO> Rlist= mypageService.mainUpcoming(memId);
		List<BoardVO> Blist= mypageService.selectByIdBoard(memId);
		int countR=mypageService.countReservation(memId);
		int countB=mypageService.countBoard(memId);
		String sumPay=mypageService.sumPay(memId);
		String sumMileage=mypageService.sumMileage(memId);
		
		logger.info("마이페이지 , 파라미터 vo={}, Rlist={}, Blist={}", vo, Rlist,Blist);
		
		model.addAttribute("vo" , vo); //회원정보 
		model.addAttribute("Rlist" , Rlist); //다가오는 최신 비행일정 6개
		model.addAttribute("Blist" , Blist); // 최근 활동내역 6개
		model.addAttribute("countR" , countR); // 한달간 예매건수
		model.addAttribute("countB" , countB); // 한달간 내가쓴글 개수
		model.addAttribute("sumPay" , sumPay); // 한달간 총 결제금액
		model.addAttribute("sumMileage" , sumMileage); // 한달간 총 사용마일리지
		
		return "/mypage/mypageMain";
	}

	@RequestMapping("/bookings.do")
	public String bookings_get(@ModelAttribute BookingSearchVO searchVo,
			HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		searchVo.setMemId(memId);
		
		logger.info("항공권 이용 내역 , 파라미터 searchVo={}", searchVo);
		
		//페이징
		PaginationInfo pagingInfo=new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);

		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());

		List<TicketViewVO> list = mypageService.selectAll(searchVo); 
		logger.info("이용내역 조회 결과 list.size={}",list.size());

		int totalRecord=mypageService.getTotalRecord(searchVo);
		logger.info("이용내역 조회 결과 totalRecord={}", totalRecord);

		pagingInfo.setTotalRecord(totalRecord);
		model.addAttribute("list",list);
		model.addAttribute("pagingInfo",pagingInfo);
		
		return "/mypage/bookings";
	}
	
	@RequestMapping("/cancelRes.do")
	@ResponseBody
	@Transactional
	public String cancelRes(@RequestParam String rNo, @RequestParam String pImpUid) {
		
		logger.info("취소 , 파라미터 rNo={} pImpUid={}", rNo, pImpUid);
		
		int cnt=reservationService.cancelRes(Integer.parseInt(rNo));
		logger.info("1. cnt================"+cnt);
		cnt=payService.cancelPay(pImpUid);
		logger.info("2. pImpUid================"+pImpUid);
		logger.info("2. cnt================"+cnt);
		return Integer.toString(cnt);
	}
	
}
