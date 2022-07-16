package com.onair.proj.pay.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PayDAO {
	int insertPay(PayVO vo);

    List<PayVO> selectPay(PayVO vo);
    int cancelPay(String pImpUid);
}
