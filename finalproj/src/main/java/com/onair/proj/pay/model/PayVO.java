package com.onair.proj.pay.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PayVO {
	private int pNo; //예매번호
	private int memNo; //회원코드
	private String pPay; //결제금액
	private String pCancle; //취소금액
	private Timestamp pPaytime; //결제시간
	private String pMileage; //사용마일리지
	private String pImpUid;
}
