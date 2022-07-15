package com.onair.proj.passenger.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PassengerDAO {
	int insertPassenger(PassengerVO vo);

    List<PassengerVO> selectPassenger(PassengerVO vo);
    
    List<PassengerVO> selectBySNo(int sNo);
}
