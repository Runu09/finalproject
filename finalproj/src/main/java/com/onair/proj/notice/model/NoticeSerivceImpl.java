package com.onair.proj.notice.model;

import java.util.List;
import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import com.onair.proj.common.DateSearchVO;
import com.onair.proj.common.SearchVO;


@Service
@RequiredArgsConstructor
public class NoticeSerivceImpl implements NoticeService {
	private final NoticeDAO noticeDao;
	
	@Override
	public List<NoticeVO> selectNoticeAll(SearchVO searchVo) {
		return noticeDao.selectNoticeAll(searchVo);
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		return noticeDao.insertNotice(vo);
	}

	@Override
	public NoticeVO selectByNo(int mbNo) {
		return noticeDao.selectByNo(mbNo);
	}

	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return noticeDao.getTotalRecord(searchVo);
	}

	@Override
	public int updateCount(int mbNo) {
		return noticeDao.updateCount(mbNo);
	}

	@Override
	public List<NoticeVO> selectAll(SearchVO searchVo) {
		return noticeDao.selectAll(searchVo);
	}

	@Override
	public int deleteNotice(int mbNo) {
		return noticeDao.deleteNotice(mbNo);
	}
	
}
