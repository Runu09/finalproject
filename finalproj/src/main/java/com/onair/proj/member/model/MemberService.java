package com.onair.proj.member.model;

public interface MemberService {

	//아이디 중복확인에서 사용하는 상수
	public static final int USABLE_ID=1;  //사용가능한 아이디
	public static final int UNUSABLE_ID=2; //이미 존재해서 사용불가능한 아이디

	int memberInsert(MemberVO vo);
	public int duplicateId(String memId);

}
