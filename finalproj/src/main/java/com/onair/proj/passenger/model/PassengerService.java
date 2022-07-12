package com.onair.proj.passenger.model;

import java.util.List;

public interface PassengerService {
	int insertPassenger(PassengerVO vo);

    List<PassengerVO> selectPassenger(PassengerVO vo);
}
