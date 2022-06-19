package com.onair.proj.voc.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VocDAO {
	int insertVoc(VocVO vo);
	List<VocVO> selectAll();
	int updateCount(int bNo);
	VocVO selectByNo(int bNo);
}
