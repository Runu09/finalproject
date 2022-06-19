package com.onair.proj.file.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class FileVO {
	private int fNo; //파일번호_프라이머리키
	private String fName;
	private int bNo; //게시글번호
	private Timestamp fRegdate;
	private int fCount;
	private int fFilesize;
	private String fOriginname;
}
