package com.onair.proj.reservation.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReservationVO {
	private int rNo; //예매번호
	private Timestamp rDate; //예매일자
	private int rPay; //예매금액
	private int rAdult; //성인인원수
	private int rChild; //소아인원수
	private String rCheckPay; //결제확인유무(Y/N)
	private int memNo; //회원코드
	private String sName; //항공편명
}
