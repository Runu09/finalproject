package com.onair.proj.reservation.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationDAO {
	int insertReservation(ReservationVO vo);

    List<ReservationVO> selectReservation(ReservationVO vo);
    int cancelRes(int rNo);
}
