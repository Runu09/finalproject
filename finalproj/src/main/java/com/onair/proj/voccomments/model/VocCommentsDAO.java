package com.onair.proj.voccomments.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VocCommentsDAO {
	int insertComment(VocCommentsVO vo);
	List<VocCommentsVO> selectByNo(int bNo);
	int updateComment(VocCommentsVO vo);
	int deleteReply(int cNo);
}
