package com.onair.proj.admin.model;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocVO;

@Mapper
public interface AdminDAO {
	int adminInsert(AdminVO vo);
	int totalMember(MemberVO vo);
	int totalboard3(VocVO vo);
}
