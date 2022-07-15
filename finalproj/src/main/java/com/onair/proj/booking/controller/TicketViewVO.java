package com.onair.proj.booking.controller;


import java.sql.Timestamp;

import lombok.Data;
@Data
public class TicketViewVO {
	/*SCHEDULE*/
	private int sNo; //항공편번호
	private String sName; //항공편명
	private String alName; //항공사명
	private String aDepnm; //출발공항
	private String aArrnm; //도착공항
	private Timestamp sStarttime; //최초출발시간
	private Timestamp sArrtime; //최종도착시간
	private int dDay; //출발일로부터 남은일수
	private String ticketType; //티켓구분

	/*PASSENGER*/
	private int pNo; //승객번호
	private String pName; //승객이름
	private String pSeat; //좌석번호
	
	/*RESERVATION*/
	private int rNo; //예매번호
	private Timestamp rDate; //예매일자
	private String  rPay; //예매금액
	private String rCheckpay; //결제플래그
	private int rAdult; //성인인원수
	private int rChild; //소아인원수
	
	/*pay*/
	private String  pPay; //결제금액
	private int pCancle; //취소금액
	private String  pMileage; //사용마일리지
	private Timestamp pPaytime; //결제시간
	
	/*MEMBER*/
	private int memNo; //회원코드
	private String memId; //회원아이디
	
}
