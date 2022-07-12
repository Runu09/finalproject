package com.onair.proj.reservation.model;

import java.util.List;

import org.springframework.stereotype.Service;

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
	
	
}
