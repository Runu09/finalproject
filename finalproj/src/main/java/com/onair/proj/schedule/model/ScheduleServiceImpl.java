package com.onair.proj.schedule.model;

import java.io.IOException;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Service;
import org.xml.sax.SAXException;

import com.onair.proj.common.ScheduleSearchVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ScheduleServiceImpl implements ScheduleService{
	private final ScheduleDAO scheduleDao;

	@Override
	public void insertScheduleApi(ScheduleVO vo) throws ParserConfigurationException, SAXException, IOException {
		scheduleDao.insertScheduleApi(vo);
	}


	@Override
	public List<ScheduleVO> selectAllScheduleApi(ScheduleSearchVO searchVo) {
		return scheduleDao.selectAllScheduleApi(searchVo);
	}

	@Override
	public int selectTotalRecord(ScheduleSearchVO searchVo) {
		return scheduleDao.selectTotalRecord(searchVo);
	}


	@Override
	public ScheduleVO selectBySName(int sNo) {
		return scheduleDao.selectBySName(sNo);
	}
	
}
