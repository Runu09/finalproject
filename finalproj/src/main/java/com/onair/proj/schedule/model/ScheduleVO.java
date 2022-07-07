package com.onair.proj.schedule.model;

import lombok.Data;

@Data
public class ScheduleVO {
	private int sNo; //항공편번호
	private String sName; //항공편명
	private String aDepnm; //출발공항
	private String aArrnm; //도착공항
	private String alName; //항공사명
	private String sStarttime; //최초출발시간
	private String sArrtime; //최종도착시간
	private String sPerson; //수용가능인원
	private String sPrice; //운임비용
}
