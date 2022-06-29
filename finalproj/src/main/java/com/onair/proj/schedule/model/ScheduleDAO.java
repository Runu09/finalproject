package com.onair.proj.schedule.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface ScheduleDAO {
	void insertScheduleApi(ScheduleVO vo);

    List<ScheduleVO> selectAllScheduleApi();
}
