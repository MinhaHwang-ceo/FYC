package com.kh.yc.category.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.category.model.service.CategoryService;
import com.kh.yc.member.model.vo.Member;

import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yc.project.model.service.ProjectService;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.Project;

@Controller
public class CategoryContoller {

	@Autowired
	CategoryService cs;
	@Autowired
	ProjectService ps;

	@RequestMapping(value = "/categoryOne.ca", method = RequestMethod.GET)
	public String categoryOne(@RequestParam int projectNo,HttpServletRequest request, HttpServletResponse response) {
		
		//글의 상세 조회를 위한 서비스를 호출. 글 상세정보는 한 줄만 가져오면 되기때문에 map 형식
		Project detail = ps.detailProject(projectNo);
		System.out.println(detail);
		request.setAttribute("detail", detail);

		return "main/categoryOne";

	}

	@RequestMapping(value = "/categoryOneFunding.ca", method = RequestMethod.GET)
	public String categoryOneFunding(Model model) {

		return "main/categoryOneFunding";

	}

	@RequestMapping(value = "/categoryOneNews.ca", method = RequestMethod.GET)
	public String categoryOneNews(Model model) {

		return "main/categoryOneNews";

	}

	@RequestMapping(value = "/categoryOneSupporter.ca", method = RequestMethod.GET)
	public String categoryOneSupporter(Model model) {

		return "main/categoryOneSupporter";

	}

	@RequestMapping(value = "/categoryOneCommunity.ca", method = RequestMethod.GET)
	public String categoryOneCommunity(Model model) {

		return "main/categoryOneCommunity";

	}
	
	@RequestMapping("memberCategory.ca")
	@ResponseBody
	public ArrayList<Project> memberCategory(Model model, String category) {
		ArrayList<Project> pList = ps.memberCategory(category);
		
		return pList;
	}
	
	
	
}
