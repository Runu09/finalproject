package com.onair.proj.board.model;

import java.util.List;

import com.onair.proj.common.DateSearchVO;

public interface BoardService {
	int insertBoard(BoardVO vo);
	List<BoardVO> selectAll();
	int updateCount(int bNo);
	BoardVO selectByNo(int bNo);
	List<BoardVO> selectLostAll();
	List<BoardVO> selectNoticeAll();
	List<BoardVO> selectLostAll(DateSearchVO searchVo);
	int selectLostTotalRecord(DateSearchVO searchVo);
}
