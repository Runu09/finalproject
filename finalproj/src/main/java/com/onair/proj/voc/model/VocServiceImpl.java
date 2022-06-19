package com.onair.proj.voc.model;

import java.util.List;

import org.springframework.stereotype.Service;

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
	public List<VocVO> selectAll() {
		return vocDao.selectAll();
	}

	@Override
	public int updateCount(int bNo) {
		return vocDao.updateCount(bNo);
	}

	@Override
	public VocVO selectByNo(int bNo) {
		return vocDao.selectByNo(bNo);
	}
	
	
}
