package com.onair.proj.voc.model;

import java.util.List;
import java.util.Map;

import com.onair.proj.common.SearchVO;

public interface VocService {
	int insertVoc(VocVO vo);
	List<VocVO> selectAll(SearchVO searchVo);
	int updateCount(int bNo);
	VocVO selectByNo(int bNo);
	int updateDownCount(int bNo);
	int getTotalRecord(SearchVO searchVo);
	boolean checkPwd(int bNo, String bPwd);
	int updateVoc(VocVO vo);
	public void deleteVoc(Map<String, String> map);
	int deleteReply(int cNo);
}
