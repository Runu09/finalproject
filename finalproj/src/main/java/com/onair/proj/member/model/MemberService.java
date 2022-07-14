package com.onair.proj.member.model;

public interface MemberService {

	//아이디 중복확인에서 사용하는 상수
	public static final int USABLE_ID=1;  //사용가능한 아이디
	public static final int UNUSABLE_ID=2; //이미 존재해서 사용불가능한 아이디

	//로그인 체크에서 사용하는 상수
	public static final int LOGIN_OK=1;  //로그인 성공, 비번 일치
	public static final int DISAGREE_PWD=2;  //비번 불일치
	public static final int NONE_USERID=3;  //해당 아이디 없다	
	
	int memberInsert(MemberVO vo);
	int duplicateId(String memId);
	int checkLogin(String memId, String memPwd);
	MemberVO selectByMemId(String memId);
	int memberUpdate(MemberVO vo);
	int memberDelete(String memId);
	int pwdChange(String memId, String memPwd);

	//아이디 찾기, 비밀번호 찾기
	String findId(String name, String email);
	
	//마일리지 차감
	int updateMileageM(String mMileage, String memId);
	
	//마일리지 적립
	int updateMileageP(String total, String memId);
}
