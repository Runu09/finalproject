package com.onair.proj.note.model;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.onair.proj.common.SearchVO;
import com.onair.proj.member.model.MemberVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class NoteServiceImpl implements NoteService{
	private final NoteDAO noteDao;

	@Override
	public int insertNote(NoteVO vo) {
		return noteDao.insertNote(vo);
	}

	@Override
	public int selectManNo(String manId) {
		return noteDao.selectManNo(manId);
	}

	/*
	 * @Override public List<MemberVO> selectMemberAll(SearchVO searchVo) {
	 * 
	 * return noteDao.selectMemberAll(searchVo); }
	 * 
	 * @Override public int selectMemberTotalRecord(SearchVO searchVo) {
	 * 
	 * return noteDao.selectMemberTotalRecord(searchVo); }
	 */
	
	
	@Override
	public int insertNoteman(NotemanVO vo) {
		return noteDao.insertNoteman(vo);
	}

	@Override
	public int selectMemNo(String memId) {
		return noteDao.selectMemNo(memId);
	}


	@Override
	public List<NoteviewVO> selectNoteView(SearchVO searchVo) {
		return noteDao.selectNoteView(searchVo);
	}

	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return noteDao.getTotalRecord(searchVo);
	}

	@Override
	public List<NoteviewVO> noteList(String memId) {
		return noteDao.noteList(memId);
	}

	@Override
	public int read(int nmNo) {
		return noteDao.read(nmNo);
	}

	@Override
	public int newNoteCount(String memId) {
		return noteDao.newNoteCount(memId);
	}

	@Override
	public List<MemberVO> selectMemberIn(SearchVO searchVo) {
		return noteDao.selectMemberIn(searchVo);
	}

	@Override
	public int selectMemberInTotalRecord(SearchVO searchVo) {
		return noteDao.selectMemberInTotalRecord(searchVo);
	}

	
	
}

