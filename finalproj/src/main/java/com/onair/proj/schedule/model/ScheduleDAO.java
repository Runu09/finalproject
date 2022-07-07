package com.onair.proj.schedule.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.onair.proj.common.ScheduleSearchVO;

@Mapper
@Repository
public interface ScheduleDAO {
	void insertScheduleApi(ScheduleVO vo);

    List<ScheduleVO> selectAllScheduleApi(ScheduleSearchVO searchVo);
    
    int selectTotalRecord(ScheduleSearchVO searchVo);
    
    ScheduleVO selectBySName(int sNo);
}
