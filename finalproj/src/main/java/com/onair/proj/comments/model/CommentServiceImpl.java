package com.onair.proj.comments.model;

import java.util.List;

import org.springframework.stereotype.Service;

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

}
