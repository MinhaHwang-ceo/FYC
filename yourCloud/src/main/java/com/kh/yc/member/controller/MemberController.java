package com.kh.yc.member.controller;

import java.util.Locale;

import javax.security.auth.login.LoginException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.yc.member.model.service.MemberServiceImpl;
import com.kh.yc.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	@Autowired
	private MemberServiceImpl ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	
	@RequestMapping(value = "loginMain.me", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "member/loginMain";
	}
	
	
	
	@RequestMapping(value = "joinMain.me", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		
		return "member/joinMain";
	}

	@RequestMapping(value = "joinInput.me", method = RequestMethod.POST)
	public String joinIdPw(Member m, Model model) {
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		
		
		m.setUserPwd(encPassword);
		
	
		System.out.println("insertMember : " + m);
		
		int result = ms.insertMember(m);
		
		if(result > 0) {
			return "member/loginMain";
		}else {
			model.addAttribute("msg", "회원 가입 실패!");
			return "common/errorPage";
		}
	
		
	
	}
	
	@RequestMapping(value = "joinNaver.me", method = RequestMethod.GET)
	public String joinNaver(Model model) {
		
		return "member/joinNaver";
	}
	
	@RequestMapping(value = "findId.me", method = RequestMethod.GET)
	public String findId(Model model) {
		
		return "member/findId";
	}
	
	@RequestMapping(value = "findPw.me", method = RequestMethod.GET)
	public String findPw(Model model) {
		
		return "member/findPw";
	}
	
	@RequestMapping(value = "resetPw.me", method = RequestMethod.GET)
	public String resetPw(Model model) {
		
		return "member/resetPw";
	}
	
	@RequestMapping(value="login.me")
	public String loginCheck(Member m, Model model) {
		

		
		try {
			Member loginUser = ms.loginMember(m);
			
			model.addAttribute("loginUser", loginUser);
			
			return "main/main";
			
		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		

	}
	
	@RequestMapping(value = "joinIdPw.me", method = RequestMethod.GET)
	public String joinIdPw(Model model) {
		
		return "member/joinIdPw";
	}
	
	

}
