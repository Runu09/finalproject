package com.onair.proj.airport.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AirportDAO {
	void insertAirportApi(AirportVO vo);
    List<AirportVO> selectAllAirportApi();
    List<AirportVO> selectAllAirport();
}
