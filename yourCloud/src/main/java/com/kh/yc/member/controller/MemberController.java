
package com.kh.yc.member.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.security.auth.login.LoginException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


import com.kh.yc.member.model.service.MemberServiceImpl;
import com.kh.yc.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	@Autowired
	private MemberServiceImpl ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	/*
	 * @Autowired private JavaMailSenderImpl mailsender;
	 * 
	 */

	
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
		
		System.out.println(m);
	
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
			
			return "redirect:index.jsp";
			
		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
		

	}
	
	@RequestMapping(value = "joinIdPw.me", method = RequestMethod.GET)
	public String joinIdPw(Model model) {
		
		return "member/joinIdPw";
	}
	

	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		
		return "redirect:index.jsp";
	}

	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "main/main";
	}

	
	 @RequestMapping("duplicationCheck.me")
	
	    public ModelAndView CheckDuplication(String userId,ModelAndView model) {
			
		 System.out.println("userId:"+userId);
		 
			String checkRst="";
			int idCnt = ms.CheckDuplication(userId);
			System.out.println("idCnt"+idCnt);
			if(idCnt > 0) {
			 
				checkRst = "F";
				
				}else {
				checkRst = "S";
			}
			
			System.out.println("checkRst"+checkRst);
			
			model.addObject("checkRst",checkRst);
			
			model.setViewName("jsonView");
			
			System.out.println(model);
			return model;
		}
	
}

