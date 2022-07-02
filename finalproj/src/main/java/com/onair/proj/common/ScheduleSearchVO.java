package com.onair.proj.common;

import lombok.Data;

@Data
public class ScheduleSearchVO extends SearchVO {
	private String depLoc;
	private String arrLoc;
	private String datepicker;
}
