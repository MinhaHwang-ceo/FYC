package com.kh.yc.funding.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CardInfo;
import com.siot.IamportRestClient.request.OnetimePaymentData;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;

@RestController
public class PayController {
	@RequestMapping("billingKey.fd")
	public ModelAndView billingKey(String customer_uid, ModelAndView mv) {
		
		IamportClient iamportClient = new IamportClient("8768417829708074", "gBsllv3A3KCmuf4pIyq6ii5aAyCRzCVQenbASfaWZNiu3mTLVkRdDWodv055D0VSo6shlDdlqwQuTJfO");
		System.out.println("오긴 온건가");
		
			// 얘는 토큰 가져오기
			try {
				BigDecimal amount = new BigDecimal(1000);
	
				ScheduleData sd = new ScheduleData(customer_uid);
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.MINUTE, 3);
				Date schedule_at = cal.getTime();
	
				ScheduleEntry se = new ScheduleEntry("testmuid", schedule_at, amount);
				System.out.println(se.getScheduleAt());
				
				sd.addSchedule(se);
				iamportClient.subscribeSchedule(sd);
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
	
	
	
	
	@RequestMapping("paySuccess.fd")
	public ModelAndView paySuccess(String imp_key, String imp_secret, ModelAndView mv) {
		// restapi 생성
		IamportClient iamportClient = new IamportClient(imp_key, imp_secret);

		try {
			// 얘는 토큰 가져오기
			String token = iamportClient.getAuth().getResponse().getToken();
			CardInfo card = new CardInfo("4854-8002-0836-8235", "2022-11", "950207", "21");
			BigDecimal amount = new BigDecimal(1000);
			
			int id = (int) (Math.random()*100000+1);
			String merchant_uid = "a"+id;
			String customer_uid = "testuid";
			
			// 이 밑은 일회용 결제
			OnetimePaymentData onetime_data = new OnetimePaymentData(merchant_uid, amount, card);
			onetime_data.setCustomer_uid(customer_uid);
			iamportClient.onetimePayment(onetime_data);
			
			
			
			
			//	ScheduleData sd = new ScheduleData("kjs3124");
			//	Calendar cal = Calendar.getInstance();
			//	cal.add(Calendar.MINUTE, 3);
			//	Date schedule_at = cal.getTime();
			//			
			//			
			//	ScheduleEntry se = new ScheduleEntry("kjs3124", schedule_at, amount);
			//	sd.addSchedule(se);
			//  iamportClient.subscribeSchedule(sd);

			
			
			
			
		} catch (IamportResponseException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mv.setViewName("jsonView");
		// view resolver에 대한 설정 해야함(서블릿에)
		// 이거로 리턴하면 알아서 아 이건 ajax로 리턴하는구나 라고 인식하고 ajax로 보냄
		// 406이나 이상한 에러 나면 그냥 잘라내기 붙여넣기 하고 다시 실행하면 됌.
		return mv;

	}
}
