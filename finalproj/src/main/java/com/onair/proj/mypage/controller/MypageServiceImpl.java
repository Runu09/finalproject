package com.onair.proj.mypage.controller;

import java.util.List;

import org.springframework.stereotype.Service;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MypageServiceImpl implements MypageService{
	private final MypageDAO mypageDao;

	@Override
	public List<BoardVO> selectById(String bId) {
		return mypageDao.selectById(bId);
	}
	

	@Override
	public List<TicketViewVO> past(String memId) {
		return mypageDao.past(memId);
	}


	@Override
	public List<TicketViewVO> selectAll(String memId) {
		return mypageDao.selectAll(memId);
	}



}
