package com.onair.proj.admin.model;

import com.onair.proj.member.model.MemberVO;

public interface AdminService {
	int adminInsert(AdminVO vo);
	int totalMember(MemberVO vo);
}
