package com.kh.yc.payment.model.service;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.payment.controller.PayController;
import com.kh.yc.payment.model.dao.PayDao;
import com.kh.yc.project.model.vo.Project;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.response.Payment;

@Service
@EnableScheduling
public class PayServiceImpl implements PayService {
	@Autowired
	PayDao pd;
	@Autowired
	PayController pc;
	@Autowired
	private SqlSessionTemplate sqlSession;

	IamportClient iamportClient = new IamportClient("8768417829708074",
			"xZUSL0NpyUxc1GBMg0lYT41iQYv8hFgOFbGqcuQKonXq4yclyyjsCkKsjgBAVRoB351fzSZYfXojvBE4");

	@Override
	// @Scheduled(cron = "0 4 17 * * *")
	//@Scheduled(cron = "*/50 * * * * *")
	public void testJobMethod() {
		ArrayList<Project> fundSuccessProject = pd.fundSuccessProject(sqlSession);

		pd.updateProjectSuccess(sqlSession);

		if (fundSuccessProject.size() > 0) {
			ArrayList<Funding> fundingList = pd.fundingList(sqlSession, fundSuccessProject);
			if (fundingList.size() > 0) {
				pd.insertFundingSuccess(sqlSession, fundingList);
			}
		}
		try {
			List<Payment> status = iamportClient.paymentsByStatus("all").getResponse().getList();
			for (Payment pay : status) {
				String payStatus = iamportClient.paymentByImpUid(pay.getImpUid()).getResponse().getStatus();
				com.kh.yc.payment.model.vo.Payment payment = new com.kh.yc.payment.model.vo.Payment();
				
				if(payStatus.equals("failed")) {
					String merchantUid = pay.getMerchantUid();
					pc.RePay(merchantUid);
				} else if(payStatus.equals("paid")) {
					payment.setPayNo(pay.getMerchantUid());
					payment.setPayStatus("결제성공");
					
					updatePayStatus(payment);
					
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertPayment(com.kh.yc.payment.model.vo.Payment pay) {
		pd.insertPayment(sqlSession, pay);

	}

	@Override
	public com.kh.yc.payment.model.vo.Payment selectRePay(String merchantUid) {
		return pd.selectRePay(sqlSession, merchantUid);
	}

	@Override
	public void updatePayStatus(com.kh.yc.payment.model.vo.Payment pay) {
		pd.updatePayStatus(sqlSession, pay);
		
	}
}