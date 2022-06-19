package com.onair.proj.voc.model;


import java.sql.Timestamp;

import lombok.Data;

@Data
public class VocVO {
	private int bNo;
	private String bId;
	private String bPwd;
	private String bTitle;
	private String bContent;
	private Timestamp bRegdate;
	private int bCount;
	private int bLike;
	private int btNo;
}