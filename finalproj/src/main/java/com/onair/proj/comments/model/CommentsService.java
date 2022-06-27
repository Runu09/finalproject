package com.onair.proj.comments.model;

import java.util.List;

public interface CommentsService {
	int insertComment(CommentsVO vo);
	List<CommentsVO> selectByNo(int bNo);
	int updateComment(CommentsVO vo);
	int deleteReply(int cNo);
}
