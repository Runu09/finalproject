package com.onair.proj.booking.controller;

import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BookingServiceImple implements BookingService {
	private final BookingDAO bookingDao;
	
	@Override
	public Map<String, Object> ticketDetail(int rNo) {
	return bookingDao.ticketDetail(rNo);
	}

}
