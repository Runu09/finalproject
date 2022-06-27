package com.onair.proj.voc.model;

import java.util.List;
import java.util.Map;

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

	@Override
	public boolean checkPwd(int bNo, String bPwd) {
		String dbPwd=vocDao.selectPwd(bNo);
		
		boolean result=false;
		if(dbPwd.equals(bPwd)) {
			result = true; //비밀번호 일치함
		}
		
		return result;
	}

	@Override
	public int updateVoc(VocVO vo) {
		return vocDao.updateVoc(vo);
	}

	@Override
	public void deleteVoc(Map<String, String> map) {
		vocDao.deleteVoc(map);
	}

	@Override
	public int deleteReply(int cNo) {
		return vocDao.deleteReply(cNo);
	}

	@Override
	public List<VocVO> selectBestList(int btNo) {
		return vocDao.selectBestList(btNo);
	}
	
	
}
