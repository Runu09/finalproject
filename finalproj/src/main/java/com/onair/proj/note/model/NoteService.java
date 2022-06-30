package com.onair.proj.note.model;

import java.util.List;
import java.util.Map;

import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;

public interface NoteService {
	int insertNote(NoteVO vo);
	int selectManNo(String manId);
	/*
	 * List<MemberVO> selectMemberAll(SearchVO searchVo); int
	 * selectMemberTotalRecord(SearchVO searchVo);
	 */

	
	 int insertNoteman(NotemanVO vo); 
	 int selectMemNo(String memId);
	 List<NoteviewVO> selectNoteView();
}
