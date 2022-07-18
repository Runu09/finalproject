package com.onair.proj.admin.model;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.onair.proj.board.model.BoardVO;
import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.notice.model.NoticeVO;
import com.onair.proj.voc.model.VocVO;

public interface AdminService {
	int adminInsert(AdminVO vo);
	int totalMember(MemberVO vo);
	int totalboard1(NoticeVO vo);
	int totalboard2(BoardVO vo);
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
	int editPwd(String manId, String manPwd);
	int chkPwd(String manId);
	int monthSignMem(int month);
	int reservationCount(int reserve);
}
