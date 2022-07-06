package com.onair.proj.note.model;

import java.util.List;
import java.util.Map;

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
	
	int getTotalRecord(SearchVO searchVo);
	int insertNoteman(NotemanVO vo);
	int selectMemNo(String memId);
	List<NoteviewVO> selectNoteView(SearchVO searchVo);
	List<NoteviewVO> noteList(String memId);
	
	int read(int nmNo);
	int newNoteCount(String memId);
	
	List<MemberVO> selectMemberIn(SearchVO searchVo);
	int selectMemberInTotalRecord(SearchVO searchVo);
	
}
