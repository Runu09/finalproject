package com.onair.proj.voccomments.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VocCommentsDAO {
	int insertComment(VocCommentsVO vo);
	List<VocCommentsVO> selectByNo(int bNo);
	int updateComment(VocCommentsVO vo);
	int deleteReply(int cNo);
	VocCommentsVO selectByCNo(int cNo);
	int updateCommentDel(int cNo);
	int insertreComment(VocCommentsVO vo);
	int updatereComment(VocCommentsVO vo);
}
