package com.onair.proj.member.model;



import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberVO {
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String mTel1;
	private String mTel2;
	private String mTel3;
	private String mEmail1;
	private String mEmail2;
	private String mBirthday;
	private String mZipcode;
	private String mAdd1;
	private String mAdd2;
	private int mMileage;
	private Timestamp mOutdate;
}
