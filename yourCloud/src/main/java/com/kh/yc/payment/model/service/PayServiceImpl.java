package com.kh.yc.payment.model.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.payment.controller.PayController;
import com.kh.yc.payment.model.dao.PayDao;
import com.kh.yc.payment.model.vo.Sponsor;
import com.kh.yc.project.model.vo.Project;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.UnscheduleData;
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
	@Scheduled(cron = "0 59 23 * * *")
	public void testJobMethod() {
		// 내일(1분 후)이 오픈 예정인 프로젝트 상태를 오픈으로 변경
		int result = pd.updateProjectOpen(sqlSession);
		// 금일 성공한 프로젝트 정보 조회
		ArrayList<Project> fundSuccessProject = pd.fundSuccessProject(sqlSession);
		// 성공한 프로젝트의 상태를 펀딩 성공으로 변경
		pd.updateProjectSuccess(sqlSession);
		// 정산 정보 입력
		pd.insertAdjust(sqlSession, fundSuccessProject);
		
		try {
			// 펀딩 실패 프로젝트 조회
			ArrayList<Funding> fundFailProject = pd.fundFailProject(sqlSession);
			// 펀딩 실패 프로젝트에 해당하는 빌링키 조회
			ArrayList<com.kh.yc.payment.model.vo.Payment> merchantId = pd.failMerchantID(sqlSession, fundFailProject);
			// 빌링키를 하나씩 꺼내어 REST API에 데이터 전달 후 결제 예약 취소
			for (com.kh.yc.payment.model.vo.Payment p : merchantId) {
				UnscheduleData unscheduleData = new UnscheduleData(p.getUserNo() + "");
				unscheduleData.addMerchantUid(p.getPayNo());
				iamportClient.unsubscribeSchedule(unscheduleData);
			}

		} catch (NullPointerException e) {
			// 1분 후 펀딩 실패에 해당하는 프로젝트가 존재하지 않는 경우 NullpointerException을 발생시켜 해당 문구를 콘솔에 출력
			System.out.println("예약 취소건 없음");
		} catch (IamportResponseException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 프로젝트 실패에 해당하는 프로젝트를 실패로 변경
		pd.updateProjectFail(sqlSession);
		if (fundSuccessProject.size() > 0) {
			// 1분 후 성공된 프로젝트 목록 조회
			ArrayList<Funding> fundingList = pd.fundingList(sqlSession, fundSuccessProject);
			if (fundingList.size() > 0) {
				// 존재할 경우 FUND_SUCCESS 테이블에 데이터 입력
				pd.insertFundingSuccess(sqlSession, fundingList);
			}
		}
		try {
			// REST API로부터 결제 현황 데이터를 받아옴
			List<Payment> status = iamportClient.paymentsByStatus("all").getResponse().getList();

			for (Payment pay : status) {
				String payStatus = iamportClient.paymentByImpUid(pay.getImpUid()).getResponse().getStatus();
				com.kh.yc.payment.model.vo.Payment payment = new com.kh.yc.payment.model.vo.Payment();

				// 하나씩 비교해 실패한 데이터들에 해당하는 빌링키 조회 후 결제를 다시 예약함(다음날 17시)
				if (payStatus.equals("failed")) {
					System.out.println("결제 실패 건 + 번째 :::" + pay.getMerchantUid());
					String merchantUid = pay.getMerchantUid();
					pc.RePay(merchantUid);
				} else if (payStatus.equals("paid")) {
					// 성공한 결제 데이터는 PAYMENT 테이블의 결제 상태를 성공으로 변경
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

	@Override
	public void insertSponsor(Sponsor sp) {
		pd.insertSponsor(sqlSession, sp);
	}

	@Override
	public int insertFund(ArrayList<Funding> fundList, ArrayList<Delivery> deliveryList) {
		int result = 0;
		for (int i = 0; i < fundList.size(); i++) {
			result = pd.insertFund(sqlSession, fundList.get(i));
			if (result > 0) {
				result = pd.insertDelivery(sqlSession, deliveryList.get(i));
				if (result > 0) {
					result = pd.insertDeliveryStatus(sqlSession, deliveryList.get(i));
				}
			}
		}

		return 0;
	}

}