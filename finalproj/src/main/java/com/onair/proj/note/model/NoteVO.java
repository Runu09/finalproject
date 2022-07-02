package com.onair.proj.note.model;

import java.sql.Timestamp;
import java.util.List;

import lombok.Data;

@Data
public class NoteVO {
	private int nNo; /* 쪽지번호 */
	private int manNo; /* 관리자번호 */
	private String nTitle;/* 쪽지제목 */
	private String nContent;/* 쪽지내용 */
	private Timestamp nTime; //최종도착시간
}
