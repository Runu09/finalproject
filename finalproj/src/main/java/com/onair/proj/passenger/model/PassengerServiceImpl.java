package com.onair.proj.passenger.model;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PassengerServiceImpl implements PassengerService{
	private final PassengerDAO passengerDao;

	@Override
	public int insertPassenger(PassengerVO vo) {
		return passengerDao.insertPassenger(vo);
	}

	@Override
	public List<PassengerVO> selectPassenger(PassengerVO vo) {
		return passengerDao.selectPassenger(vo);
	}
}
