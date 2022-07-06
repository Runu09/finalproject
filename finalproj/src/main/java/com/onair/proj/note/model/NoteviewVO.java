package com.onair.proj.note.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NoteviewVO {
	private int nmNo; /* 쪽지관리번호 */
	private String memId; /*회원아이디*/
	private String manId; /*관리자아이디*/
	private String nTitle;/* 쪽지제목 */
	private String nContent;/* 쪽지내용 */
	private Timestamp nTime; //발송시간
	private String nmCheckread;	//읽음 유무
	private Timestamp nmReaddate; //읽은 시간
	

}
