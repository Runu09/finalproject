package com.onair.proj.common;

import lombok.Data;

@Data
public class BookingSearchVO extends SearchVO{
	private String memId;
	private String ticketType;
}
