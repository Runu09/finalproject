package com.onair.proj.comments.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommentsDAO {
	int insertComment(CommentsVO vo);
	List<CommentsVO> selectByNo(int bNo);
	int updateComment(CommentsVO vo);
	int deleteReply(int cNo);

	int updateSortNo(CommentsVO vo); 
	int reply(CommentsVO vo);
	
	void deleteComments(Map<String, String> map);
	
}
