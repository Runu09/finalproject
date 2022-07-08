package com.onair.proj.mypage.controller;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;

@Mapper
public interface MypageDAO {
	List<BoardVO> selectById (String bId);
	List<TicketViewVO> past(String memId);
	List<TicketViewVO> selectAll(String memId);
}
