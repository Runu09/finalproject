package com.onair.proj.airline.controller;

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

import com.onair.proj.airline.model.AirlineInfoExplorer;
import com.onair.proj.airline.model.AirlineService;
import com.onair.proj.airline.model.AirlineVO;

@Controller
public class AirlineController {
	private static final Logger logger
	=LoggerFactory.getLogger(AirlineController.class);
	
	private AirlineService airlineService;
	
	@Autowired
	public AirlineController(AirlineService apiService) {
		this.airlineService=apiService;
	}
	
	//검색시 데이터가 없으면 db에 추가하도록 처리한다.
    @GetMapping("/apiTest/AirlineApiData")
    public void searchInfo(Model model) throws ParserConfigurationException, SAXException, IOException {

    	logger.info("파싱 스타트 체크");

        AirlineInfoExplorer apiExplorer = new AirlineInfoExplorer();

        //파싱하여 리턴한 데이터 값들을 list에 담아주기 위해 사용
        List<AirlineVO> list = apiExplorer.parsingData("");

        //List에 담겨있는 정보들을 db에 넣기 위해서 사용
        for (AirlineVO vo : list) {

        	airlineService.insertAirlineApi(vo);

        }

        model.addAttribute("selectAllAirlineApi",airlineService.selectAllAirlineApi());

        logger.info("파싱 정보 입력끝");
    }
}
