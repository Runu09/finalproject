package com.onair.proj.pay.model;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PayServiceImpl implements PayService{
	private final PayDAO payDao;

	@Override
	public int insertPay(PayVO vo) {
		return payDao.insertPay(vo);
	}

	@Override
	public List<PayVO> selectPay(PayVO vo) {
		return payDao.selectPay(vo);
	}
}
