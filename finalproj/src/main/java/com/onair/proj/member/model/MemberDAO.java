package com.onair.proj.member.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	int memberInsert(MemberVO vo);
	public int duplicateId(String memId);
	
}
