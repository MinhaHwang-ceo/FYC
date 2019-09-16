package com.kh.yc.member.controller;

import java.util.ArrayList;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yc.member.model.service.MemberServiceImpl;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.service.ProjectService;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.common.Pagination;

@Controller
public class MyPageController {

	@Autowired
	private ProjectService ps;
	
	@Autowired
	private MemberServiceImpl ms;
	
	public MyPageController() {
	}

	@RequestMapping("myPage.me")
	public String goMyPage(@ModelAttribute Member m) {
		return "member/myPage";
	}

	@RequestMapping("changeInfo.me")
	public String changeInfo(@ModelAttribute Member m) {
		System.out.println("내가 돌아왔다.");

		return "main/main";
	}

	@RequestMapping("interestProject.me")
	public String interestProject(@ModelAttribute Member m) {

		return "member/interestProject";
	}

	@RequestMapping("messageBox.me")
	public String messageBox(@ModelAttribute Member m) {

		return "member/messageBox";
	}

	@RequestMapping("sendMessage.me")
	public String sendMessage(@ModelAttribute Member m) {

		return "member/message";
	}

	@RequestMapping("myReward.me")
	public String myReward(@ModelAttribute Member m) {

		return "member/myReward";
	}
	@RequestMapping("myMaker.me")
	public String makerReward(@ModelAttribute Member m) {

		return "member/myMaker";
	}

	@RequestMapping("showMyRewardDetail.me")
	public String showMyRewardDetail(@ModelAttribute Member m) {

		return "member/myRewardDetail";
	}

	@RequestMapping("myProject.me")
	public String myProject(@ModelAttribute Member m,HttpServletRequest request, HttpServletResponse response) {
	
		
		int currentPage = 1;
		if(request.getParameter("currentPage") !=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		try {
		int count=	ps.getListCount();
		System.out.println("count::::::"+count );
		PageInfo pi = Pagination.getPageInfo(currentPage, count);
	
System.out.println("m:::::;;"+m);
		
		ArrayList<Project> list= ps.selectProjectList2(pi,m);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		} catch (ProjectSelectListException e) {
			e.printStackTrace();
		}
		
		
		
		return "member/myProject";
	}

	@RequestMapping("receiptInfo.me")
	public String receiptInfo(@ModelAttribute Member m) {

		return "member/receiptInfo";
	}

	@RequestMapping("supporterList.me")
	public String supporterList(@ModelAttribute Member m,int bNum,HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<Project> list= ps.selectSupportList(bNum);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());
		request.setAttribute("list", list);

		
		return "member/supporterList";
	}
}
