package com.onair.proj.pay.model;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PayServiceImpl {
	private final PayDAO payDao;
}
