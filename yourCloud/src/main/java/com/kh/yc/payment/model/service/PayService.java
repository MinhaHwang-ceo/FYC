package com.kh.yc.payment.model.service;

import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.payment.model.vo.Payment;

public interface PayService {
	void testJobMethod();

	int insertPayment(Payment pay);

	Payment selectRePay(String merchantUid);

	void updatePayStatus(Payment pay);

	int insertFund(Funding fund);

	int insertDelivery(Delivery delivery);

	int insertDeliveryStatus(Delivery delivery);
}
