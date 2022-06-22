package com.onair.proj.board.model;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardSerivceImpl implements BoardService{
	private final BoardDAO boardDao;

	@Override
	public int insertBoard(BoardVO vo) {
		return boardDao.insertBoard(vo);
	}

	@Override
	public List<BoardVO> selectAll() {
		return boardDao.selectAll();
	}

	@Override
	public int updateCount(int bNo) {
		return boardDao.updateCount(bNo);
	}

	@Override
	public BoardVO selectByNo(int bNo) {
		return boardDao.selectByNo(bNo);
	}

	@Override
	public List<BoardVO> selectLostAll() {
		return boardDao.selectLostAll();
	}
	
	
}
