package com.onair.proj.schedule.model;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ScheduleServiceImpl {
	private final ScheduleDAO scheduleDao;
}
