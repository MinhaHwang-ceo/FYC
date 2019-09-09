package com.kh.yc.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.yc.board.model.service.BoardService;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.common.Pagination;

@Controller
public class BoardController {

	@Autowired
	BoardService bs;

	@RequestMapping(value = "openExpectation.bo", method = RequestMethod.GET)
	public String openExpectation(Model model) {

		return "board/openExpectation/openExpectationMain";
	}

	@RequestMapping(value = "openExpectationDetail.bo", method = RequestMethod.GET)
	public String openExpectationDetail(Model model) {

		return "board/openExpectation/openExpectationDetail";
	}

	@RequestMapping(value = "openExpectationRequest.bo", method = RequestMethod.GET)
	public String openExpectationRequest(Model model) {

		return "board/openExpectation/openExpectationRequest";
	}

	@RequestMapping(value = "funding_1.bo", method = RequestMethod.GET)
	public String fundingRequest1(Model model) {

		return "board/funding/funding_1";
	}

	@RequestMapping(value = "funding_2.bo", method = RequestMethod.GET)
	public String fundingRequest2(Model model) {

		return "board/funding/funding_2";
	}

	@RequestMapping(value = "funding_3.bo", method = RequestMethod.GET)
	public String fundingRequest3(Model model) {

		return "board/funding/funding_3";
	}

	@RequestMapping(value = "category.bo", method = RequestMethod.GET)
	public String category(Model model) {

		return "main/category";
	}

	@RequestMapping("guide.bo")
	public String guide() {

		return "board/guide";
	}

	@RequestMapping("guideOne.bo")
	public String guideOne() {

		return "board/guideOne";
	}

	@RequestMapping("guideWrite.bo")
	public String guideWrite() {

		return "board/guideWrite";
	}

	@RequestMapping("intro")
	public String intro() {

		return "main/intro";

	}

	@RequestMapping("notice.bo")
	public String Notice() {

		return "board/notice";
	}

	@RequestMapping("noticeOne.bo")
	public String noticeOne() {

		return "board/noticeOne";
	}

	@RequestMapping("noticeWrite.bo")
	public String noticeWrite() {

		return "board/noticeWrite";
	}

	@RequestMapping("openBoardList.bo")
	public String openBoardList(HttpServletRequest request, HttpServletResponse response) {
		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		int listCount = bs.getListCount();
		System.out.println(listCount);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Board> list = bs.selectBoardList(pi);
		System.out.println(list);
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		
		return "board/openBoardList";
	}

}
