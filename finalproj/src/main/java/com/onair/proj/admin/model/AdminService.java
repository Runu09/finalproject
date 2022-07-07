package com.onair.proj.admin.model;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
	//public List<MemberVO> getExcelDown(MemberVO memberVo, HttpServletResponse response);
	List<MemberVO> getExcelDown(MemberVO memberVo);
	AdminVO selectByManId(String manId);
	int adminMemberDelete(String memId);
	List<AdminVO> selectAllAdmin(SearchVO searchVo);
	int selectAdminTotalRecord(SearchVO searchVo);
	int deleteAdmin(String manId);
}
