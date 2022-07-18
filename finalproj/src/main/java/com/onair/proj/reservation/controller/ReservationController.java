package com.onair.proj.reservation.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.reservation.model.ReservationService;
import com.onair.proj.reservation.model.ReservationVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/booking")
public class ReservationController {
	private static final Logger logger
	=LoggerFactory.getLogger(ReservationController.class);
	
	private final ReservationService reservationservice;
	
	//총 예약 내역 리스트
	@RequestMapping("/totalReservation.do")
	public String notice(@ModelAttribute DateSearchVO searchVo, Model model) {
		logger.info("총 예약 내역 화면, 파라미터 searchVo={}", searchVo);
		searchVo.setSearchCondition("MemNo");
		
		if(searchVo.getStartDay()==null || searchVo.getStartDay().isEmpty())
		{	
			Date today=new Date();
			Calendar cal=Calendar.getInstance();
			cal.add(Calendar.MONTH, -1);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String defStart=sdf.format(cal.getTime());
			String defEnd=sdf.format(today);

			searchVo.setStartDay(defStart);
			searchVo.setEndDay(defEnd);

			logger.info("현재일자 setting searchVo={}",searchVo);
		}
		
		//페이징 처리 로직 시작
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT1);
		
		List<ReservationVO> list=reservationservice.selectReservationAll(searchVo);
		logger.info("공지사항 목록 조회결과 list.size={}", list.size());
		
		int totalRecord=reservationservice.getTotalRecord(searchVo);
		logger.info("글목록 TotalRecord={}", totalRecord);
		
		pagingInfo.setTotalRecord(totalRecord);
		
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "/booking/totalReservation";
	}
	
}
