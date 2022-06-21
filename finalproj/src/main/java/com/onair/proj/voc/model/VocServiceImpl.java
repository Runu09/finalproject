package com.onair.proj.voc.model;

import java.util.List;

import org.springframework.stereotype.Service;

import com.onair.proj.common.SearchVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class VocServiceImpl implements VocService{
	private final VocDAO vocDao;

	@Override
	public int insertVoc(VocVO vo) {
		return vocDao.insertVoc(vo);
	}

	@Override
	public List<VocVO> selectAll(SearchVO searchVo) {
		return vocDao.selectAll(searchVo);
	}

	@Override
	public int updateCount(int bNo) {
		return vocDao.updateCount(bNo);
	}

	@Override
	public VocVO selectByNo(int bNo) {
		return vocDao.selectByNo(bNo);
	}

	@Override
	public int updateDownCount(int bNo) {
		return vocDao.updateDownCount(bNo);
	}

	@Override
	public int getTotalRecord(SearchVO searchVo) {
		return vocDao.getTotalRecord(searchVo);
	}
	
	
}
