package com.kh.yc.payment.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;
import com.siot.IamportRestClient.response.Payment;

@RestController()
public class PayController {
	IamportClient iamportClient = new IamportClient("8768417829708074",
			"xZUSL0NpyUxc1GBMg0lYT41iQYv8hFgOFbGqcuQKonXq4yclyyjsCkKsjgBAVRoB351fzSZYfXojvBE4");

	@RequestMapping("billingKey.fd")
	public ModelAndView billingKey(String customer_uid, HttpServletRequest request, ModelAndView mv) {

		try {
			Random random = new Random();

			String merchantUid = "fund" + random.nextInt(100000);

			BigDecimal amount = new BigDecimal(1000);
			ScheduleData sd = new ScheduleData(customer_uid);
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MINUTE, 3);
			Date schedule_at = cal.getTime();

			ScheduleEntry se = new ScheduleEntry(merchantUid, schedule_at, amount);
			sd.addSchedule(se);

			iamportClient.subscribeSchedule(sd);

			/*
			 * BigDecimal amount = new BigDecimal(1000); AgainPaymentData ad = new
			 * AgainPaymentData("kjs3124", "0900132", amount);
			 * iamportClient.againPayment(ad);
			 */
		} catch (IamportResponseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping("getPayStatus.fd")
	public String getPayStatus(Model model) {
		try {
			System.out.println("this is getPayStatus");
			List<Payment> status = iamportClient.paymentsByStatus("all").getResponse().getList();
			for (Payment pay : status) {
				System.out.println(pay.getName() + pay.getStatus());
			}

		} catch (IamportResponseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "main/main";
	}
	
}
