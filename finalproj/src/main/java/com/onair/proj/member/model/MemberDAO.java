package com.onair.proj.member.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	int memberInsert(MemberVO vo);
	public int duplicateId(String memId);
	String selectPwd(String memId);
	MemberVO selectByMemId(String memId);
	int memberUpdate(MemberVO vo);
	int memberDelete(String memId);
	int pwdChange(String memId, String memPwd);
	String findId(String name, String email);
	int updateMileageM(int mMileage, String memId);
	int updateMileageP(int total, String memId);
	
}
