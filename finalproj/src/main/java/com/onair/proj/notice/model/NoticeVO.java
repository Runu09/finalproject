package com.onair.proj.notice.model;

import java.sql.Timestamp;
import lombok.Data;

@Data
public class NoticeVO {
	private int mbNo;
	private String mbTitle;
	private String mbContent;
	private Timestamp mbRegdate;
	private int mbCount;
	private int mbLike;
	private int btNo;
	
	//파일업로드 추가
	private String fName;
	private long fFileSize;
	private int fCount;
	private String fOriginName;
}
