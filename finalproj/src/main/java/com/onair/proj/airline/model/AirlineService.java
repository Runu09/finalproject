package com.onair.proj.airline.model;

import java.util.List;

public interface AirlineService {
	void insertAirlineApi(AirlineVO vo);

    List<AirlineVO> selectAllAirlineApi();
}
