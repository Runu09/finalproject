package com.onair.proj.mypage.controller;

import java.util.List;

import org.springframework.stereotype.Service;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.booking.controller.TicketViewVO;
import com.onair.proj.common.BookingSearchVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MypageServiceImpl implements MypageService{
	private final MypageDAO mypageDao;

	@Override
	public List<BoardVO> selectByIdBoard(String bId) {
		return mypageDao.selectByIdBoard(bId);
	}
	

	@Override
	public List<TicketViewVO> past(BookingSearchVO searchVo) {
		return mypageDao.past(searchVo);
	}


	@Override
	public List<TicketViewVO> selectAll(BookingSearchVO searchVo) {
		return mypageDao.selectAll(searchVo);
	}


	@Override
	public int getTotalRecord(BookingSearchVO searchVo) {
		return mypageDao.getTotalRecord(searchVo);
	}


	@Override
	public List<TicketViewVO> mainUpcoming(String memId) {
		return mypageDao.mainUpcoming(memId);
	}


	@Override
	public List<TicketViewVO> upcoming(BookingSearchVO searchVo) {
		return mypageDao.upcoming(searchVo);
	}


	@Override
	public int getTotalRecord2(BookingSearchVO searchVo) {
		return mypageDao.getTotalRecord2(searchVo);
	}


	


}
