package com.kh.yc.category.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.category.model.service.CategoryService;
import com.kh.yc.project.model.vo.Project;

@Controller
public class CategoryContoller {
	@Autowired
	CategoryService cs;
	
	@RequestMapping(value = "/categoryOne.ca", method = RequestMethod.GET)
	public String categoryOne(Model model) {
		
		
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
	public ModelAndView memberCategory(ModelAndView mv, String category) {
		ArrayList<Project> pList;
		
		mv.setViewName("jsonView");
		return mv;
	}
}
