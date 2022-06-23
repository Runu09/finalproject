package com.onair.proj.board.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.common.DateSearchVO;

@Mapper
public interface BoardDAO {
	int insertBoard(BoardVO vo);
	List<BoardVO> selectAll();
	int updateCount(int bNo);
	BoardVO selectByNo(int bNo);
	List<BoardVO> selectLostAll();
	List<BoardVO> selectNoticeAll();
	List<BoardVO> selectLostAll(DateSearchVO searchVo);
	int selectLostTotalRecord(DateSearchVO searchVo);
}
