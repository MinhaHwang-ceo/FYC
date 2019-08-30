package com.kh.yc.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value = "loginMain.me")
	public String home(Model model) {
		
		return "member/loginMain";
	}
	
	@RequestMapping(value = "joinMain.me")
	public String join(Model model) {
		
		return "member/joinMain";
	}

	@RequestMapping(value = "joinIdPw.me")
	public String joinIdPw(Model model) {
		
		return "member/joinIdPw";
	}
	
	@RequestMapping(value = "joinNaver.me")
	public String joinNaver(Model model) {
		
		return "member/joinNaver";
	}
	
	@RequestMapping(value = "findId.me")
	public String findId(Model model) {
		
		return "member/findId";
	}
	
	@RequestMapping(value = "findPw.me")
	public String findPw(Model model) {
		
		return "member/findPw";
	}
	
	@RequestMapping(value = "resetPw.me")
	public String resetPw(Model model) {
		
		return "member/resetPw";
	}

}
