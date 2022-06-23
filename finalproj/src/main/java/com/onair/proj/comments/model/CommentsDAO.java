package com.onair.proj.comments.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommentsDAO {
	int insertComment(CommentsVO vo);
	List<CommentsVO> selectByNo(int bNo);
}
