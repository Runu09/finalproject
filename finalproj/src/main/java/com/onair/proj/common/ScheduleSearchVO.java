package com.onair.proj.common;

import lombok.Data;

@Data
public class ScheduleSearchVO extends SearchVO {
	private String arrival;
	private String departure;
	private String datepicker;
	private String numberUpDown1;
	private String numberUpDown2;
}
