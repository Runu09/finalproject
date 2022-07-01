package com.onair.proj.note.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NotemanVO {
	private int nmNo; /* 쪽지관리번호 */
	private int memNo; /* 회원코드 */
	private String nmCheckread;  /* 읽음유무 */
	private Timestamp nmReaddate; /* 읽은날짜 */
	private int nNo; /* 쪽지번호 */
}