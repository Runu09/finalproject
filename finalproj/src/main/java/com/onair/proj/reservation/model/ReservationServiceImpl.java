package com.onair.proj.reservation.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.SearchVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService{
	private final ReservationDAO reservationDao;

	@Override
	public int insertReservation(ReservationVO vo) {
		return reservationDao.insertReservation(vo);
	}

	@Override
	public List<ReservationVO> selectReservation(ReservationVO vo) {
		return reservationDao.selectReservation(vo);
	}

	@Override
	public int cancelRes(int rNo) {
		return reservationDao.cancelRes(rNo);
	}

	@Override
	public List<ReservationVO> selectReservationAll(DateSearchVO vo) {
		return reservationDao.selectReservationAll(vo);
	}

	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return reservationDao.getTotalRecord(searchVo);
	}
}
