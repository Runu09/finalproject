package com.onair.proj.pay.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PayVO {
	private int pNo; //예매번호
	private int memNo; //회원코드
	private int pPay; //결제금액
	private int pCancle; //취소금액
	private Timestamp pPaytime; //결제시간
	private int pMileage; //사용마일리지
	private String pImpUid;
}
