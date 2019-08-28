package com.kh.yc.board.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	@RequestMapping(value = "openExpectation.bo", method = RequestMethod.GET)
	public String openExpectation(Locale locale, Model model) {
		
		return "board/openExpectation/openExpectationMain";
	}
	
	@RequestMapping(value = "openExpectationDetail.bo", method = RequestMethod.GET)
	public String openExpectationDetail(Locale locale, Model model) {
		
		return "board/openExpectation/openExpectationDetail";
	}
	
	@RequestMapping(value = "openExpectationRequest.bo", method = RequestMethod.GET)
	public String openExpectationRequest(Locale locale, Model model) {
		
		return "board/openExpectation/openExpectationRequest";
	}
	
	@RequestMapping(value = "funding_1.bo", method = RequestMethod.GET)
	public String fundingRequest1(Locale locale, Model model) {
		
		return "board/funding/funding_1";
	}
	
	@RequestMapping(value = "funding_2.bo", method = RequestMethod.GET)
	public String fundingRequest2(Locale locale, Model model) {
		
		return "board/funding/funding_2";
	}

	@RequestMapping(value = "funding_3.bo", method = RequestMethod.GET)
	public String fundingRequest3(Locale locale, Model model) {
		
		return "board/funding/funding_3";
	}
	
	
	@RequestMapping(value = "category.bo", method = RequestMethod.GET)
	public String category(Locale locale, Model model) {
		
		return "main/category";
	}
	
	
	
	
	
	
	
	
}
