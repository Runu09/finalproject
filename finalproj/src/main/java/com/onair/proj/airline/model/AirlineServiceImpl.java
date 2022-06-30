package com.onair.proj.airline.model;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AirlineServiceImpl implements AirlineService{
private final AirlineDAO airlineDao;
	
    @Override
    public void insertAirlineApi(AirlineVO vo) {

    	airlineDao.insertAirlineApi(vo);
    }

    @Override
    public List<AirlineVO> selectAllAirlineApi() {
        return airlineDao.selectAllAirlineApi();
    }
}
