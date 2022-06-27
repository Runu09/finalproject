package com.onair.proj.comments.model;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CommentServiceImpl implements CommentsService{
	private final CommentsDAO commentsDao;

	@Override
	public int insertComment(CommentsVO vo) {
		return commentsDao.insertComment(vo);
	}

	@Override
	public List<CommentsVO> selectByNo(int bNo) {
		return commentsDao.selectByNo(bNo);
	}

	@Override
	public int updateComment(CommentsVO vo) {
		return commentsDao.updateComment(vo);
	}


	@Override public int deleteReply(int cNo) { 
		return commentsDao.deleteReply(cNo); }


	@Override
	@Transactional
	public int reply(CommentsVO vo) {
		int cnt=commentsDao.updateSortNo(vo); 
		cnt=commentsDao.reply(vo);
		return cnt;
	}

	@Override
	public void deleteComments(Map<String, String> map) {
		commentsDao.deleteComments(map);

	}



}
