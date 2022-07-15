package com.onair.proj.notice.model;

import java.util.List;
import com.onair.proj.common.SearchVO;

public interface NoticeService {
	List<NoticeVO> selectNoticeAll(SearchVO searchVo);
	int insertNotice(NoticeVO vo);
	NoticeVO selectByNo(int mbNo);
	int getTotalRecord(SearchVO searchVo);
	int updateCount(int mbNo);
	List<NoticeVO> selectAll(SearchVO searchVo);
	int deleteNotice(int mbNo);
}
