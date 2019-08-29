package com.kh.yc.funding.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
