package com.onair.proj.passenger.model;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PassengerServiceImpl {
	private final PassengerDAO passengerDao;
}
