package com.onair.proj.voc.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.onair.proj.common.SearchVO;

@Mapper
public interface VocDAO {
	int insertVoc(VocVO vo);
	List<VocVO> selectAll(SearchVO searchVo);
	int updateCount(int bNo);
	VocVO selectByNo(int bNo);
	int updateDownCount(int bNo);
	int getTotalRecord(SearchVO searchVo);
	String selectPwd(int bNo);
	int updateVoc(VocVO vo);
	public void deleteVoc(Map<String, String> map);
	int deleteReply(int cNo);
}
