package com.onair.proj.voc.model;

import java.util.List;

import com.onair.proj.common.SearchVO;

public interface VocService {
	int insertVoc(VocVO vo);
	List<VocVO> selectAll(SearchVO searchVo);
	int updateCount(int bNo);
	VocVO selectByNo(int bNo);
	int updateDownCount(int bNo);
	int getTotalRecord(SearchVO searchVo);
}
