package com.onair.proj.mypage.controller;

import java.util.List;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;


public interface MypageService {
	List<BoardVO> selectById (String bId);
	List<TicketViewVO> selectAll(String memId);
	List<TicketViewVO> past(String memId);

}
