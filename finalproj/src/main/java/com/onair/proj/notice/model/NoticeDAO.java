package com.onair.proj.notice.model;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.common.SearchVO;

@Mapper
public interface NoticeDAO {
	List<NoticeVO> selectNoticeAll();
	int insertNotice(NoticeVO vo);
	NoticeVO selectByNo(int bNo);
	int getTotalRecord(SearchVO searchVo);
	int updateCount(int bNo);
	List<NoticeVO> selectAll(SearchVO searchVo);
}
