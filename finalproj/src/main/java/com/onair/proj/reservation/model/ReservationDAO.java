package com.onair.proj.reservation.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.SearchVO;

@Mapper
public interface ReservationDAO {
	int insertReservation(ReservationVO vo);
    List<ReservationVO> selectReservation(ReservationVO vo);
    int cancelRes(int rNo);
    List<ReservationVO> selectReservationAll(DateSearchVO vo);
    int getTotalRecord(SearchVO searchVo);
}
