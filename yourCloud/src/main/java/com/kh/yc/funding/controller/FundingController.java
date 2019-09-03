package com.kh.yc.funding.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.member.model.vo.Member;

@Controller
public class FundingController {
	@RequestMapping(value = "FundingOpen.me", method = RequestMethod.GET)
	public String FundingOpen(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen1";
	}
	
	@RequestMapping(value = "FundingOpen2.me", method = RequestMethod.GET)
	public String FundingOpen2(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen2";
	}
	
	@RequestMapping(value = "FundingOpen3.me", method = RequestMethod.GET)
	public String FundingOpen3(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen3";
	}
	
	@RequestMapping(value = "FundingOpen4.me", method = RequestMethod.GET)
	public String FundingOpen4(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen4";
	}
	
	@RequestMapping(value = "FundingOpen5.me", method = RequestMethod.GET)
	public String FundingOpen5(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen5";
	}
	
	@RequestMapping(value = "FundingOpen6.me", method = RequestMethod.GET)
	public String FundingOpen6(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen6";
	}
	
	@RequestMapping(value = "FundingOpen7.me", method = RequestMethod.GET)
	public String FundingOpen7(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen7";
	}
	
	@RequestMapping("payTest.fd")
	public String payTest() {
		
		return "fundingOpen/payTest";
	}
	
	@RequestMapping("paySuccess.fd")
	public ModelAndView paySuccess(String customer_uid, ModelAndView mv) {
		System.out.println("Hello");
		
		mv.addObject("customer_uid", customer_uid);
		mv.setViewName("jsonView");
		// view resolver에 대한 설정 해야함(서블릿에)
		// 이거로 리턴하면 알아서 아 이건 ajax로 리턴하는구나 라고 인식하고 ajax로 보냄
		// 406이나 이상한 에러 나면 그냥 잘라내기 붙여넣기 하고 다시 실행하면 됌.
		return mv;
	}
}
