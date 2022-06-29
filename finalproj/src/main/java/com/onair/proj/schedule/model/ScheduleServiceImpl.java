package com.onair.proj.schedule.model;

import java.io.IOException;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Service;
import org.xml.sax.SAXException;

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
	public List<ScheduleVO> selectAllScheduleApi() {
		return scheduleDao.selectAllScheduleApi();
	}
	
}
