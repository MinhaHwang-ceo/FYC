package com.kh.yc.category.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.category.model.service.CategoryService;
import com.kh.yc.category.model.vo.Encore;
import com.kh.yc.category.model.vo.Reply;
import com.kh.yc.category.model.vo.Report;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.project.model.service.ProjectService;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.reward.model.vo.RewardInfo;

@Controller
@Component
public class CategoryContoller {

	@Autowired
	CategoryService cs;
	@Autowired
	ProjectService ps;

	@RequestMapping(value = "/categoryOne.ca", method = RequestMethod.GET)
	public String categoryOne(@RequestParam int projectNo,HttpServletRequest request, HttpServletResponse response) {
		
		//실시간 시간 테스트중
		/*
		 * Date d = new Date(); SimpleDateFormat test0 = new
		 * SimpleDateFormat("yyyy-MM-dd");
		 * 
		 * String today = test0.format(d); System.out.println(today+": 오늘날짜");
		 * 
		 * String endDate = request.getParameter("endDate");
		 * System.out.println(endDate+": 마감날짜");
		 * 
		 * if(today.equals(endDate)) { System.out.println("일치합니다");
		 * 
		 * }else { System.out.println("일치하지 않습니다"); }
		 */
		//글의 상세 조회를 위한 서비스를 호출. 글 상세정보는 한 줄만 가져오면 되기때문에 map 형식
		Project detail = ps.detailProject(projectNo);
		//System.out.println(detail);
		request.setAttribute("detail", detail);
		
		//jsp에서 넘겨준 값
		int mNo = Integer.parseInt(request.getParameter("userNo"));
		int pNo = projectNo;
		
		Interest inter = new Interest();
		
		inter.setProjectNo(pNo);
		inter.setUserNo(mNo);
		
		int likeCount =  ps.likeCount(inter);
		
		request.setAttribute("likeCount", likeCount);
		
		int reportCount =  ps.reportCount(inter);
		
		//펀드 돈
		int sumFundMoney = ps.sumFundMoney(inter);
		
		//서포터 수 카운드
		int supportCount = ps.supportCount(inter);
		
		//앵콜 수 카운트
		int encoreCount = ps.encoreCount(inter);
		
		String mainImg = ps.mainImg(inter);
		//메이커 이미지
		String makerImg = ps.makerImg(inter);
		System.out.println(makerImg+"는 메이커이미지입니다");
		
		//리워드 출력
		ArrayList<Reward> reward =  ps.rewardList(projectNo);
		System.out.println(reward);
		
		request.setAttribute("reportCount", reportCount);
		request.setAttribute("projectNo", projectNo);
		request.setAttribute("sumFundMoney", sumFundMoney);
		request.setAttribute("supportCount", supportCount);
		request.setAttribute("mainImg", mainImg);
		request.setAttribute("encoreCount", encoreCount);
		request.setAttribute("reward", reward);
		request.setAttribute("makerImg", makerImg);
		
		
		return "main/categoryOne";

	}

	@RequestMapping(value = "/categoryOneFunding.ca", method = RequestMethod.GET)
	public String categoryOneFunding(HttpServletRequest request, HttpServletResponse response) {
		
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		
		//System.out.println(projectNo);
		
		Project detail = ps.detailProject(projectNo);
		
		//System.out.println(detail);
		
		request.setAttribute("detail", detail);
		
		RewardInfo rewardInfo = ps.rewardInfo(projectNo);
		
		request.setAttribute("reward", rewardInfo);
		
		//System.out.println(rewardInfo+"는?????????????????????");

		return "main/categoryOneFunding";

	}

	@RequestMapping(value = "/categoryOneNews.ca", method = RequestMethod.GET)
	public String categoryOneNews(HttpServletRequest request, HttpServletResponse response) {

		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		
		System.out.println(projectNo);
		
		Project detail = ps.detailProject(projectNo);
		
		System.out.println(detail);
		
		request.setAttribute("detail", detail);
		
		return "main/categoryOneNews";

	}

	@RequestMapping(value = "/categoryOneSupporter.ca", method = RequestMethod.GET)
	public String categoryOneSupporter(HttpServletRequest request, HttpServletResponse response) {
		
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		
		//System.out.println(projectNo);
		
		Project detail = ps.detailProject(projectNo);
		
		//System.out.println(detail);
		
		ArrayList<Funding> fund = ps.fundList(projectNo);
		
		//System.out.println(fund);
		
	
		request.setAttribute("detail", detail);
		request.setAttribute("fund", fund);
		

		return "main/categoryOneSupporter";

	}

	@RequestMapping(value = "/categoryOneCommunity.ca", method = RequestMethod.GET)
	public String categoryOneCommunity(HttpServletRequest request, HttpServletResponse response) {
		
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		
		System.out.println(projectNo);
		
		Project detail = ps.detailProject(projectNo);
		
		System.out.println(detail);
		
		request.setAttribute("detail", detail);
		
		//댓글 출력
		ArrayList<Reply> reply = ps.selectReplyList(projectNo);
		 
		request.setAttribute("reply", reply);
		 
		return "main/categoryOneCommunity";

	}
	
	@RequestMapping("memberCategory.ca")
	@ResponseBody
	public ArrayList<Project> memberCategory(Model model, String category) {
		ArrayList<Project> pList = ps.memberCategory(category);
		
		return pList;
	}
	
	//좋아요 기능
	@RequestMapping(value = "like.ca")
	public ModelAndView like(ModelAndView mv,HttpServletRequest request, HttpServletResponse response) {
		
		int pNo = Integer.parseInt(request.getParameter("pNo"));
		int mNo = Integer.parseInt(request.getParameter("mNo"));
		//int cnt = Integer.parseInt(request.getParameter("cnt"));
		
		Interest inter = new Interest();
		
		inter.setProjectNo(pNo);
		inter.setUserNo(mNo);
		
		int cnt2 = ps.likeCount(inter);
		
		if(cnt2==1) {
			
			ps.deleteLike(inter);
			
		}else {
			 ps.insertLike(inter);
		}
		
	     mv.setViewName("jsonView");
	     mv.addObject("inter", inter);
	     mv.addObject("cnt", cnt2);
	     
		return mv;

	}
	
	//신고하기 view
	@RequestMapping(value = "/reportProject.ca", method = RequestMethod.GET)
	public String reportProject(HttpServletRequest request, HttpServletResponse response) {

		return "main/reportProject";
	}
	
	//신고하기
	@ResponseBody
	@RequestMapping(value = "/submitReport.ca", method = RequestMethod.POST)
	public int submitReport(Report report,Model model,HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println(report);
		
		
		int result = ps.insertReport(report);
		ps.updateReport(report);
		return result;
	}
	
	@Scheduled(cron = "0 59 * * * *")
	public void cornTest() {
		System.out.println("59분에 항상 실행");
	}
	
	@RequestMapping(value = "/replyProject.ca", method = RequestMethod.GET)
	public String replyCount(HttpServletRequest request, HttpServletResponse response) {
		
		int projectNo = Integer.parseInt(request.getParameter("projectNo"));
		
		System.out.println(projectNo);
		
		Project detail = ps.detailProject(projectNo);
		
		System.out.println(detail);
		
		request.setAttribute("detail", detail);

		return "main/replyProject";
	}
	
	@ResponseBody
	@RequestMapping(value = "/submitReply.ca", method = RequestMethod.POST)
	public int submitReply(Reply reply,Model model,HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println(reply+"는 뭔가요");
		
		return ps.insertReply(reply);
	}
	
	@ResponseBody
	@RequestMapping(value = "/encore.ca", method = RequestMethod.GET)
	public int submitEncore(Encore encore,Model model,HttpServletRequest request, HttpServletResponse response) {
		
		/*
		 * int projectNo = Integer.parseInt(request.getParameter("projectNo")); int
		 * userNo = Integer.parseInt(request.getParameter("userNo"));
		 * 
		 * System.out.println(projectNo); System.out.println(userNo);
		 * 
		 * Encore encore = new Encore();
		 * 
		 * encore.setProjectNo(projectNo); encore.setUserNo(userNo);
		 * System.out.println(encore);
		 */
		
		return ps.insertEncore(encore);
	}
	
	
	
	
}
