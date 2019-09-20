package com.kh.yc.payment.model.service;

import com.kh.yc.payment.model.vo.Payment;

public interface PayService {
	void testJobMethod();

	void insertPayment(Payment pay);

	Payment selectRePay(String merchantUid);

	void updatePayStatus(Payment pay);
}
