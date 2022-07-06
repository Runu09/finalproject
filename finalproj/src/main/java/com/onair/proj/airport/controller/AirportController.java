package com.onair.proj.airport.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.xml.sax.SAXException;

import com.onair.proj.airport.model.AirportInfoExplorer;
import com.onair.proj.airport.model.AirportService;
import com.onair.proj.airport.model.AirportVO;
import com.onair.proj.note.model.NoteService;
import com.onair.proj.note.model.NoteviewVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AirportController {
	private static final Logger logger
	=LoggerFactory.getLogger(AirportController.class);

	private final AirportService airportService;
	private final NoteService noteService;

	//검색시 데이터가 없으면 db에 추가하도록 처리한다.
	@GetMapping("/apiTest/AirportApiData")
	public void searchInfo(Model model) throws ParserConfigurationException, SAXException, IOException {

		logger.info("파싱 스타트 체크");

		AirportInfoExplorer apiExplorer = new AirportInfoExplorer();

		//파싱하여 리턴한 데이터 값들을 list에 담아주기 위해 사용
		List<AirportVO> list = apiExplorer.parsingData("");

		//List에 담겨있는 정보들을 db에 넣기 위해서 사용
		for (AirportVO vo : list) {

			airportService.insertAirportApi(vo);

		}

		model.addAttribute("selectAllAirportApi",airportService.selectAllAirportApi());

		logger.info("파싱 정보 입력끝");
	}

	@RequestMapping("/main/main.do")
	public void AirportMainGet(HttpSession session, Model model) {
		List<AirportVO> list = airportService.selectAllAirport();

		String memId=(String)session.getAttribute("memId");
		if(memId!=null&&!memId.isEmpty()) {
			
			int count=noteService.newNoteCount(memId);
			model.addAttribute("count",count);
		}
		model.addAttribute("selectAllAirport",list);

	}

	/*
	@RequestMapping("/booking/flight-round-trip.do") 
	public void AirportRound(Model model) { 
		List<AirportVO> list = airportService.selectAllAirport();

		model.addAttribute("selectAllAirport",list);

	}
	  
	*/


}
