package com.kh.yc.admin.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.yc.admin.model.service.AdminService;
import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.admin.model.vo.Report;
import com.kh.yc.member.model.vo.Member;

@Controller
public class AdminController {

	@Inject
	AdminService AdminService;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	// 멤버리스트
	@RequestMapping(value = "member.ad", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {

		System.out.println("넘어왔다~~~~~~~~~~~~~~");
		List<Member> list = AdminService.memberList();
		model.addAttribute("list", list);

		System.out.println("list : " + list);
		return "admin/memberManagement";
	}

	// 멤버상태수정
	@RequestMapping(value = "memberUpdate.ad")
	public String memberUpdate(Member m, Model model) {

		System.out.println(m.getUserNo() + "userNo");
		System.out.println(m.getStatus() + "option");

		AdminService.updateMember(m);

		return "redirect:/memberStatus.ad";
	}

	// 멤버정보 호출
	@RequestMapping(value = "memberStatus.ad", method = RequestMethod.GET)
	public String admin9(String userNo, Model model) {

		model.addAttribute("dto", AdminService.viewMember(userNo));

		System.out.println("유저번호" + userNo);
		return "admin/MemberStatus";
	}

	// 멤버정보 호출2
	@RequestMapping(value = "memberView.ad", method = RequestMethod.GET)
	public String admin1(String userNo, Model model) {

		model.addAttribute("dto", AdminService.viewMember(userNo));

		System.out.println("유저번호" + userNo);
		return "admin/viewMember";
	}

	// ADMIN메인페이지
	@RequestMapping(value = "main.ad", method = RequestMethod.GET)
	public String admin2(Locale locale, Model model) {

		return "admin/admin_index";
	}

	// 프로젝트 매니저
	@RequestMapping(value = "project1.ad", method = RequestMethod.GET)
	public String admin3(Locale locale, Model model) {

		return "admin/projectManagement";
	}

	// 장부관리
	@RequestMapping(value = "project2.ad", method = RequestMethod.GET)
	public String admin4(Locale locale, Model model) {

		return "admin/book";
	}

	// 통계
	@RequestMapping(value = "project3.ad", method = RequestMethod.GET)
	public String admin5(Locale locale, Model model) {

		return "admin/charts";
	}

	// 프로젝트 현황
	@RequestMapping(value = "project4.ad", method = RequestMethod.GET)
	public String admin6(Locale locale, Model model) {

		return "admin/projectStatus";
	}

	// 정산관리
	@RequestMapping(value = "project5.ad", method = RequestMethod.GET)
	public String admin7(Locale locale, Model model) {

		return "admin/adjust";
	}

	// 신고관리
	@RequestMapping(value = "project6.ad", method = RequestMethod.GET)
	public String admin8(Locale locale, Model model) {

		System.out.println("넘어왔다~~~~~~~~~~~~~~");
		List<Report> list = AdminService.reportList();
		model.addAttribute("list", list);

		System.out.println("list : " + list);

		return "admin/report";
	}

	// 신고 프로젝트 정보 호출
	@RequestMapping(value = "reportStatus.ad", method = RequestMethod.GET)
	public String admin10(String reportNo, Model model) {

		model.addAttribute("rpt", AdminService.viewReport(reportNo));

		System.out.println("유저번호" + reportNo);
		return "admin/reportStatus";
	}

	// 프로젝트 상태수정
	@RequestMapping(value = "reportUpdate.ad")
	public String reportUpdate(Project p, Model model) {

		System.out.println(p.getProjectNo() + "projectNo");
		System.out.println(p.getProgressStatus() + "option");

		AdminService.updateReport(p);

		return "redirect:/project6.ad";
	}

	// 신청 프로젝트 리스트
	@RequestMapping(value = "projectList.ad", method = RequestMethod.GET)
	public String admin11(Locale locale, Model model) {

		System.out.println("넘어왔다~~~~~~~~~~~~~~");
		List<Project> list = AdminService.projectList();
		model.addAttribute("list", list);

		System.out.println("list : " + list);
		return "admin/projectManagement";
	}
	
	// 신청 프로젝트 정보 호출
		@RequestMapping(value = "projectStatus.ad", method = RequestMethod.GET)
		public String admin12(String projectNo, Model model) {

			System.out.println("유저번호" + projectNo);
			model.addAttribute("rpt", AdminService.viewProject(projectNo));

			return "admin/projectDetail";
		}
	
	
	// 프로젝트 심사
		@RequestMapping(value = "projectUpdate.ad")
		public String projectUpdate(Project p, Model model) {

			System.out.println(p.getProjectNo() + "projectNo");
			System.out.println(p.getJudgeStatus() + "option");

			AdminService.updateProject(p);

			return "redirect:/project1.ad";
		}

}
