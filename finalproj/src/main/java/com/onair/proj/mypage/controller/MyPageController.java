package com.onair.proj.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;
import com.onair.proj.common.BookingSearchVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.controller.MemberController;
import com.onair.proj.member.model.MemberService;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageController {
	private static final Logger logger
	=LoggerFactory.getLogger(MemberController.class);
	
	private final MemberService memberService;
	private final MypageService mypageService;


	@GetMapping("/mypageMain.do")
	public String mypagemain_get(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("memId");
		logger.info("마이페이지 메인, 파라미터 memId={}", memId);
		
		MemberVO vo = memberService.selectByMemId(memId);
		List<TicketViewVO> Rlist= mypageService.mainUpcoming(memId);
		List<BoardVO> Blist= mypageService.selectByIdBoard(memId);
		
		logger.info("마이페이지 , 파라미터 vo={}, Rlist={}, Blist={}", vo, Rlist,Blist);
		
		model.addAttribute("vo" , vo); //회원정보 
		model.addAttribute("Rlist" , Rlist); //다가오는 최신 비행일정 6개
		model.addAttribute("Blist" , Blist); // 최근 활동내역 6개
		
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
	
	
}
