package com.onair.proj.note.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;

@Mapper
public interface NoteDAO {
	int insertNote(NoteVO vo);
	int selectManNo(String manId);
	/*
	 * List<MemberVO> selectMemberAll(SearchVO searchVo); int
	 * selectMemberTotalRecord(SearchVO searchVo);
	 */
	
	
	int insertNoteman(NotemanVO vo);
	int selectMemNo(String memId);
	
}
