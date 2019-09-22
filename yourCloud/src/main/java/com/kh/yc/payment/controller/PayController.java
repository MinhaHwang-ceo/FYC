package com.kh.yc.payment.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.payment.model.service.PayService;
import com.kh.yc.payment.model.vo.Payment;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;

@RestController()
public class PayController {

	@Autowired
	PayService ps;

	IamportClient iamportClient = new IamportClient("8768417829708074",
			"xZUSL0NpyUxc1GBMg0lYT41iQYv8hFgOFbGqcuQKonXq4yclyyjsCkKsjgBAVRoB351fzSZYfXojvBE4");

	@RequestMapping("billingKey.fd")
	public ModelAndView billingKey(String customer_uid, HttpServletRequest request, ModelAndView mv) {

		try {
			Random random = new Random();

			String merchantUid = "fund" + random.nextInt(100000);

			BigDecimal amount = new BigDecimal(100000);
			ScheduleData sd = new ScheduleData(customer_uid);
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MINUTE, 1);
			Date schedule_at = cal.getTime();

			ScheduleEntry se = new ScheduleEntry(merchantUid, schedule_at, amount);

			Payment pay = new Payment();

			pay.setUserNo(Integer.parseInt(customer_uid));
			pay.setPayNo(merchantUid);
			pay.setPayStatus("결제전");
			int price = amount.intValue();
			pay.setAmount(price);
			ps.insertPayment(pay);

			sd.addSchedule(se);

			iamportClient.subscribeSchedule(sd);
			
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
			System.out.println(p);
			merchantUid = p.getPayNo();
			Random random = new Random();

			String merchantUid2 = "fund" + random.nextInt(100000);
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
