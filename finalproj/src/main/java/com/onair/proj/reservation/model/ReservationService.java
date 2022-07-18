package com.onair.proj.reservation.model;

import java.util.List;

import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.SearchVO;

public interface ReservationService {
	int insertReservation(ReservationVO vo);
    List<ReservationVO> selectReservation(ReservationVO vo);
    int cancelRes(int rNo);
    List<ReservationVO> selectReservationAll(DateSearchVO vo);
    int getTotalRecord(SearchVO searchVo);
}
