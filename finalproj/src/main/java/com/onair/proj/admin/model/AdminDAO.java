package com.onair.proj.admin.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;
import com.onair.proj.voc.model.VocVO;

@Mapper
public interface AdminDAO {
	int adminInsert(AdminVO vo);
	int totalMember(MemberVO vo);
	int totalboard3(VocVO vo);
	String adminSelectPwd(String manId);
	List<MemberVO> selectMemberAll(SearchVO searchVo);
	int selectMemberTotalRecord(SearchVO searchVo);
	List<MemberVO> selectMemberAll2(MemberVO memberVo);
	
}
