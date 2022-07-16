package com.onair.proj.reservation.model;

import java.util.List;

public interface ReservationService {
	int insertReservation(ReservationVO vo);

    List<ReservationVO> selectReservation(ReservationVO vo);
    int cancelRes(int rNo);
}
