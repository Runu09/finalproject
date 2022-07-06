package com.onair.proj.booking.controller;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookingDAO {
	TicketViewVO ticketDetail(int rNo);
	
}
