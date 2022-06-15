package com.onair.proj.airport.model;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AirportServiceImpl {
	private final AirportDAO airportDAO;
}
