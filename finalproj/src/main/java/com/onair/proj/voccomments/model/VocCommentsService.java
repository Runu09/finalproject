package com.onair.proj.voccomments.model;

import java.util.List;

public interface VocCommentsService {
	int insertComment(VocCommentsVO vo);
	List<VocCommentsVO> selectByNo(int bNo);
	int updateComment(VocCommentsVO vo);
	int deleteReply(int cNo);
}
