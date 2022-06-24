package com.onair.proj.voccomments.model;


import java.sql.Timestamp;

import lombok.Data;

@Data
public class VocCommentsVO {
	private int cNo;	// 코멘트 번호 
	private int bNo;	// 게시판번호 
	private String cId;	//아이디
	private String cContent;	//코멘트내용
	private Timestamp cRegdate;	//등록날짜
	
	private int cGroupno;
	private int cStep;
	private int cSortno;
	private String cDelflag;
}
