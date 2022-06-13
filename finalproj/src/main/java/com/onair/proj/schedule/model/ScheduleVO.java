package com.onair.proj.schedule.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ScheduleVO {
	private String sName; //항공편명
	private String aNo; //출발공항번호
	private String aNo2; //도착공항번호
	private Timestamp sStarttime; //최초출발시간
	private Timestamp sArrtime; //최종도착시간
	private int sPerson; //수용가능인원
}
