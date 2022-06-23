package com.onair.proj.common;

import lombok.Data;

@Data
public class DateSearchVO extends SearchVO{
	private String startDay; //시작일
	private String endDay; //종료일
	private String bId;
}
