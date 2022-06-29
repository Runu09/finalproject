package com.onair.proj.airline.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AirlineDAO {
	void insertAirlineApi(AirlineVO vo);

    List<AirlineVO> selectAllAirlineApi();
}
