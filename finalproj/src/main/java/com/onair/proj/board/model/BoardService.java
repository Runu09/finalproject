package com.onair.proj.board.model;

import java.util.List;

public interface BoardService {
	int insertBoard(BoardVO vo);
	List<BoardVO> selectAll();
	int updateCount(int bNo);
	BoardVO selectByNo(int bNo);
}
