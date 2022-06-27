package com.onair.proj.airport.model;

import java.io.IOException;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

public interface AirportService {
	void insertAirport(AirportVO vo) throws ParserConfigurationException, SAXException, IOException;

    List<AirportVO> selectAllAirport();

}
