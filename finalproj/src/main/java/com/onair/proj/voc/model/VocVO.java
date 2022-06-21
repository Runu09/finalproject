package com.onair.proj.voc.model;


import java.sql.Timestamp;

import lombok.Data;

@Data
public class VocVO {
	private int bNo; //게시글번호
	private String bId;
	private String bPwd;
	private String bTitle;
	private String bContent;
	private Timestamp bRegdate;
	private int bCount;
	private int bLike;
	private int btNo;
	
	//답변형 추가
	private int bGroupno;
	private int bStep;
	private int bSortno;
	private String bDelflag;
	
	//파일업로드 추가
	private String fName;
	private long fFileSize;
	private int fCount;
	private String fOriginName;
}