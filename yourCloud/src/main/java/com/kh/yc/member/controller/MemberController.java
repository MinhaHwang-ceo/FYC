package com.kh.yc.member.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value = "loginMain.me", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "member/loginMain";
	}
	
	@RequestMapping(value = "loginMain.me", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		return "member/loginMain";
	}
	
	@RequestMapping(value = "joinMain.me", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		
		return "member/joinMain";
	}

	@RequestMapping(value = "joinIdPw.me", method = RequestMethod.GET)
	public String joinIdPw(Locale locale, Model model) {
		
		return "member/joinIdPw";
	}
	
	@RequestMapping(value = "joinNaver.me", method = RequestMethod.GET)
	public String joinNaver(Locale locale, Model model) {
		
		return "member/joinNaver";
	}
	
	@RequestMapping(value = "findId.me", method = RequestMethod.GET)
	public String findId(Locale locale, Model model) {
		
		return "member/findId";
	}
	
	@RequestMapping(value = "findPw.me", method = RequestMethod.GET)
	public String findPw(Locale locale, Model model) {
		
		return "member/findPw";
	}
	
	@RequestMapping(value = "resetPw.me", method = RequestMethod.GET)
	public String resetPw(Locale locale, Model model) {
		
		return "member/resetPw";
	}

}
