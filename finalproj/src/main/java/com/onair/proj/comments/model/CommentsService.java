package com.onair.proj.comments.model;

import java.util.List;
import java.util.Map;

public interface CommentsService {
	int insertComment(CommentsVO vo);
	List<CommentsVO> selectByNo(int bNo);
	int updateComment(CommentsVO vo);

	int deleteReply(int cNo); 
	int reply(CommentsVO vo);
	void deleteComments(Map<String, String> map);
}
