package com.onair.proj.admin.model;

import java.util.List;

import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocVO;

public interface AdminService {
	int adminInsert(AdminVO vo);
	int totalMember(MemberVO vo);
	int totalboard3(VocVO vo);
	int adminLogin(String manId, String manPwd);
	List<MemberVO> selectMemberAll(SearchVO searchVo);
	int selectMemberTotalRecord(SearchVO searchVo);
}
