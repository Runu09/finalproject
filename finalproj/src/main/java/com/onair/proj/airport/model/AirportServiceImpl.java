package com.onair.proj.airport.model;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AirportServiceImpl implements AirportService{
	private final AirportDAO airportDAO;
	
    @Override
    public void insertAirportApi(AirportVO vo) {

    	airportDAO.insertAirportApi(vo);
    }

    @Override
    public List<AirportVO> selectAllAirportApi() {
        return airportDAO.selectAllAirportApi();
    }
    
    @Override
    public List<AirportVO> selectAllAirport() {
        return airportDAO.selectAllAirport();
    }
}
