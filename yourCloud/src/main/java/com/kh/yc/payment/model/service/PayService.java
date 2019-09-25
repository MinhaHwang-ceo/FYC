package com.kh.yc.payment.model.service;

import java.util.ArrayList;

import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.payment.model.vo.Payment;
import com.kh.yc.payment.model.vo.Sponsor;

public interface PayService {
   void testJobMethod();

   void insertPayment(Payment pay);

   Payment selectRePay(String merchantUid);

   void updatePayStatus(Payment pay);

   int insertFund(ArrayList<Funding> fundList);

   void insertDelivery(ArrayList<Delivery> deliveryList);

   void insertDeliveryStatus(ArrayList<Delivery> deliveryList);

   void insertSponsor(Sponsor sp);
}