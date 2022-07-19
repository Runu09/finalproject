package com.onair.proj.voccomments.model;

import java.util.List;
import java.util.Map;

public interface VocCommentsService {
	int insertComment(VocCommentsVO vo);
	List<VocCommentsVO> selectByNo(int bNo);
	int updateComment(VocCommentsVO vo);
	int deleteReply(Map<String, String> map);
	VocCommentsVO selectByCNo(int cNo);
	int updateCommentDel(int cNo);
	int insertreComment(VocCommentsVO vo);
	int updatereComment(VocCommentsVO vo);
	int selectCommentsCount(int bNo);
}
