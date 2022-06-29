package com.onair.proj.schedule.controller;

import java.io.IOException;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.xml.sax.SAXException;

import com.onair.proj.schedule.model.ScheduleInfoExplorer;
import com.onair.proj.schedule.model.ScheduleService;
import com.onair.proj.schedule.model.ScheduleVO;

@Controller
public class ScheduleController {
	
	 private static final Logger logger
	 =LoggerFactory.getLogger(ScheduleController.class);
	 
	 private ScheduleService scheduleService;
	 
	 @Autowired public ScheduleController(ScheduleService apiService) {
	 this.scheduleService=apiService; }

	//검색시 데이터가 없으면 db에 추가하도록 처리한다.
    @GetMapping("/apiTest/ScheduleApiData")
    public void searchInfo(Model model) throws ParserConfigurationException, SAXException, IOException {

    	logger.info("파싱 스타트 체크");
        ScheduleInfoExplorer apiExplorer = new ScheduleInfoExplorer();

        //파싱하여 리턴한 데이터 값들을 list에 담아주기 위해 사용
        List<ScheduleVO> list = apiExplorer.parsingData("NAARKSS", "NAARKPC", "20220627");

        //List에 담겨있는 정보들을 db에 넣기 위해서 사용
        for (ScheduleVO vo : list) {

        	scheduleService.insertScheduleApi(vo);

        }

        model.addAttribute("selectAllScheduleApi",scheduleService.selectAllScheduleApi());

        logger.info("파싱 정보 입력끝");
    }

}
