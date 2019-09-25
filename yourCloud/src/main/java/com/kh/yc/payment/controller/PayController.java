package com.kh.yc.payment.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.board.model.service.BoardService;
import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.payment.model.service.PayService;
import com.kh.yc.payment.model.vo.Payment;
import com.kh.yc.payment.model.vo.Sponsor;
import com.kh.yc.project.model.vo.Project;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;

@RestController()
public class PayController {

	@Autowired
	PayService ps;
	@Autowired
	BoardService bs;
	
	IamportClient iamportClient = new IamportClient("8768417829708074",
			"xZUSL0NpyUxc1GBMg0lYT41iQYv8hFgOFbGqcuQKonXq4yclyyjsCkKsjgBAVRoB351fzSZYfXojvBE4");

	@RequestMapping("billingKey.fd")
	public ModelAndView billingKey(String customer_uid, String price, String phone, String deliverySite, String etc, String userName, String userNo, String projectNo, String rewardCount, String fundMoney, String rewardNo, String totalPrice, HttpServletRequest request, ModelAndView mv) {
		Project p = bs.selectProject(Integer.parseInt(projectNo));
		Date endDate = p.getEndDate();
		String rewardNo2[] = rewardNo.split("\\$");
		String rewardCount2[] = rewardCount.split("\\$");
		String fundMoney2[] = fundMoney.split("\\$");
		ArrayList<Funding> fundList = new ArrayList<Funding>();
		ArrayList<Delivery> deliveryList = new ArrayList<Delivery>();
		for(int i = 0; i < rewardNo2.length; i++) {
			Funding fund = new Funding();
			fund.setUserNo(Integer.parseInt(userNo));
			fund.setRewardNo(Integer.parseInt(rewardNo2[i]));
			fund.setRewardCount(Integer.parseInt(rewardCount2[i]));
			fund.setProjectNo(Integer.parseInt(projectNo));
			fund.setFundMoney(Integer.parseInt(fundMoney2[i]));
			fund.setBlind("0");
			fundList.add(fund);
			
			Delivery delivery = new Delivery();
			delivery.setUserNo(userNo);
			delivery.setUserName(userName);
			delivery.setPhone(phone);
			delivery.setEtc(etc);
			delivery.setDeliverySite(deliverySite);
			delivery.setStatus("배송전");
			deliveryList.add(delivery);
		}
		
		int result = ps.insertFund(fundList);
		
		try {
			
			Random random = new Random();

			String merchantUid = "fundi" + random.nextInt(100000);

			BigDecimal amount = new BigDecimal(Integer.parseInt(totalPrice));
			ScheduleData sd = new ScheduleData(customer_uid);
			Calendar cal = Calendar.getInstance();
			cal.setTime(endDate);
			cal.add(Calendar.DATE, 1);
			cal.add(Calendar.HOUR, 17);
			
			//cal.add(Calendar.MINUTE, 1);
			
			
			Date schedule_at = cal.getTime();
			
			ScheduleEntry se = new ScheduleEntry(merchantUid, schedule_at, amount);

			Payment pay = new Payment();

			pay.setUserNo(Integer.parseInt(customer_uid));
			pay.setPayNo(merchantUid);
			pay.setPayStatus("결제전");
			
			pay.setAmount(Integer.parseInt(totalPrice));
			ps.insertPayment(pay);
			
			sd.addSchedule(se);
			
			iamportClient.subscribeSchedule(sd);
			
			ps.insertDelivery(deliveryList);
			ps.insertDeliveryStatus(deliveryList);
			
			Sponsor sp = new Sponsor();
			sp.setUserNo(pay.getUserNo());
			sp.setProjectNo(Integer.parseInt(projectNo));
			sp.setSupportMoney(Integer.parseInt(totalPrice));
			
			ps.insertSponsor(sp);
		} catch (IamportResponseException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		mv.setViewName("jsonView");
		return mv;
	}

	public void RePay(String merchantUid) {
		try {
			Payment p = ps.selectRePay(merchantUid);
			merchantUid = p.getPayNo();
			Random random = new Random();

			String merchantUid2 = "refund" + random.nextInt(100000);
			String customer_uid = String.valueOf(p.getUserNo());

			BigDecimal amount = new BigDecimal(p.getAmount());
			ScheduleData sd = new ScheduleData(customer_uid);
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MINUTE, 1);
			Date schedule_at = cal.getTime();

			ScheduleEntry se = new ScheduleEntry(merchantUid2, schedule_at, amount);

			Payment pay = new Payment();
			pay.setUserNo(Integer.parseInt(customer_uid));
			pay.setPayNo(merchantUid);
			pay.setPayStatus("결제실패");
			int price = amount.intValue();
			pay.setAmount(price);
			ps.updatePayStatus(pay);
			sd.addSchedule(se);
			

			iamportClient.subscribeSchedule(sd);
		} catch (IamportResponseException | IOException e) {
			e.printStackTrace();
		} catch (NullPointerException e) {
			
		}

	}
}
