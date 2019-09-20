package com.kh.yc.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.common.Pagination;
import com.kh.yc.member.model.service.MemberService;
import com.kh.yc.member.model.service.MemberServiceImpl;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.service.ProjectService;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;
import com.kh.yc.reward.model.vo.Reward;

@Controller
public class MyPageController {

	@Autowired
	private ProjectService ps;
	
	@Autowired
	private MemberService ms;
	
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
	public String myReward(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		int currentPage = 1;
		
		Member mse = (Member) session.getAttribute("loginUser");
		System.out.println(mse);
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		int listCount;
		try {
			listCount = ps.getListCount();
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			ArrayList<Reward> list = ms.selectMyReward(pi, mse);
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
		} catch (ProjectSelectListException e) {
			e.printStackTrace();
		}
		
		
		return "member/myReward";
	}
	@RequestMapping("myMaker.me")
	public String makerReward(@ModelAttribute Member m) {

		return "member/myMaker";
	}

	@RequestMapping("showMyRewardDetail.me")
	public String showMyRewardDetail(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		String rewardNo = request.getParameter("rewardNo");
		int rewardNoInt = Integer.parseInt(rewardNo);
		System.out.println(rewardNoInt);
		
		Reward r = new Reward();
		
		
		r = ms.selectMyRewardDetail(rewardNoInt); 
		request.setAttribute("r", r);
		 
		
		
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
	public String receiptInfo(@ModelAttribute Member m,int bNum,HttpServletRequest request, HttpServletResponse response) {

		System.out.println("bNum"+bNum);
		ArrayList<Project> list= ps.receipt(bNum);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());
		
		
		request.setAttribute("list", list);
		
		
		
		return "member/receiptInfo";
	}

	@RequestMapping("supporterList.me")

	public String supporterList(@ModelAttribute Member m,int bNum,HttpServletRequest request, HttpServletResponse response) {
		System.out.println("bNum"+bNum);
		ArrayList<Project> list= ps.selectSupportList(bNum);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());
		request.setAttribute("list", list);

		
		return "member/supporterList";
	}
	
	@RequestMapping("supporterList2.me")
	public ModelAndView  supporterList2(ModelAndView mv, @ModelAttribute Member m,int bNum,String standard,HttpServletRequest request, HttpServletResponse response) {
	System.out.println("bNum"+bNum);
		System.out.println("standard"+standard);
		
	SupportList sl= new SupportList();
	sl.setStatus(standard);
	sl.setProjectNo(bNum);

		ArrayList<Project> list= ps.selectSupportList2(sl);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());

		
		mv.setViewName("jsonView");
		mv.addObject("list", list);
	
		return mv;
		
	}
	
	
	

	@RequestMapping("supporterList3.me")
	public ModelAndView  supporterList3(ModelAndView mv, @ModelAttribute Member m,int bNum,String standard,HttpServletRequest request, HttpServletResponse response) {
	System.out.println("bNum"+bNum);
		System.out.println("standard"+standard);
		
	SupportList sl= new SupportList();
	sl.setStatus(standard);
	sl.setProjectNo(bNum);

		ArrayList<Project> list= ps.selectSupportList3(sl);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());

		
		mv.setViewName("jsonView");
		mv.addObject("list", list);
	
		return mv;
		
	}
	
	
	
}
