package com.onair.proj.admin.model;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.member.model.MemberVO;

@Mapper
public interface AdminDAO {
	int adminInsert(AdminVO vo);
	int totalMember(MemberVO vo);
}
