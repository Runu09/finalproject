package com.onair.proj.passenger.model;

import lombok.Data;

@Data
public class PassengerVO {
	private int pNo; //승객번호
	private int rNo; //예매번호
	private String pSeat; //좌석번호
	private String pName; //승객이름
	private String pBirthday; //생년월일
	private String pCon; //국적
	private int sNo;
}
