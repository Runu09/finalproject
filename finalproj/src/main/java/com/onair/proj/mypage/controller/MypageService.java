package com.onair.proj.mypage.controller;

import java.util.List;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;
import com.onair.proj.common.BookingSearchVO;


public interface MypageService {
	List<BoardVO> selectByIdBoard (String bId);
	List<TicketViewVO> selectAll(BookingSearchVO searchVo);
	int getTotalRecord (BookingSearchVO searchVo);
	List<TicketViewVO> mainUpcoming (String memId);
	int countReservation(String memId);
	int countBoard(String bId);
	//int sumPay(String memId);
	//int sumMileage(String memId);
}
