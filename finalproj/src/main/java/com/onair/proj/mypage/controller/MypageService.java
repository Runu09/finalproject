package com.onair.proj.mypage.controller;

import java.util.List;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;
import com.onair.proj.common.BookingSearchVO;


public interface MypageService {
	List<BoardVO> selectByIdBoard (String bId);
	List<TicketViewVO> selectAll(BookingSearchVO searchVo);
	List<TicketViewVO> past(BookingSearchVO searchVo);
	int getTotalRecord (BookingSearchVO searchVo);
	int getTotalRecord2 (BookingSearchVO searchVo);
	List<TicketViewVO> mainUpcoming (String memId);
	List<TicketViewVO> upcoming(BookingSearchVO searchVo);
}
