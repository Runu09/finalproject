package com.onair.proj.voc.model;

import java.util.List;

public interface VocService {
	int insertVoc(VocVO vo);
	List<VocVO> selectAll();
	int updateCount(int bNo);
	VocVO selectByNo(int bNo);
	int updateDownCount(int bNo);
}
