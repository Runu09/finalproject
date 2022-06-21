package com.onair.proj.board.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDAO {
	int insertBoard(BoardVO vo);
	List<BoardVO> selectAll();
	int updateCount(int bNo);
	BoardVO selectByNo(int bNo);
}
