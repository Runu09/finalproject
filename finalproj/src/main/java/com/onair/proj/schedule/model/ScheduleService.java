package com.onair.proj.schedule.model;

import java.io.IOException;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

public interface ScheduleService {
	void insertScheduleApi(ScheduleVO vo) throws ParserConfigurationException, SAXException, IOException;

    List<ScheduleVO> selectAllScheduleApi();
}
