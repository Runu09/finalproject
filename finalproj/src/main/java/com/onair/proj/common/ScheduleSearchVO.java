package com.onair.proj.common;

import lombok.Data;

@Data
public class ScheduleSearchVO extends SearchVO {
	private String arrival;
	private String departure;
	private String datepicker;
	private String people;
}
