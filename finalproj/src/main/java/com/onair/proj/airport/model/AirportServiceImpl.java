package com.onair.proj.airport.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AirportServiceImpl implements AirportService{
	private static final Logger logger
	=LoggerFactory.getLogger(AirportServiceImpl.class);
	
	private final AirportDAO airportDAO;
	
    @Override
    public void insertAirport(AirportVO vo) {

    	airportDAO.insertAirport(vo);
    }

    @Override
    public List<AirportVO> selectAllAirport() {
        return airportDAO.selectAllAirport();
    }
}
