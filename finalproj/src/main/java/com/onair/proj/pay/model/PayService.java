package com.onair.proj.pay.model;

import java.util.List;

public interface PayService {
	int insertPay(PayVO vo);

    List<PayVO> selectPay(PayVO vo);
    int cancelPay(String pImpUid);
}
