package com.onair.proj.mypage.controller;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;
import com.onair.proj.common.BookingSearchVO;

@Mapper
public interface MypageDAO {
	List<BoardVO> selectByIdBoard (String bId);
	List<TicketViewVO> past(BookingSearchVO searchVo);
	List<TicketViewVO> selectAll(BookingSearchVO searchVo);
	List<TicketViewVO> upcoming(BookingSearchVO searchVo);
	int getTotalRecord (BookingSearchVO searchVo);
	int getTotalRecord2 (BookingSearchVO searchVo);
	List<TicketViewVO> mainUpcoming (String memId);
}
