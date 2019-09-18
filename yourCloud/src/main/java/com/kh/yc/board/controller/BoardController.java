package com.kh.yc.board.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.board.model.service.BoardService;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.common.CommonUtils;
import com.kh.yc.common.Pagination;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.service.ProjectService;
import com.kh.yc.project.model.vo.Project;

@Controller
public class BoardController {
	@Autowired
	BoardService bs;
	@Autowired
	SearchCondition sc;
	@Autowired
	ProjectService ps;

	@RequestMapping(value = "openExpectation.bo", method = RequestMethod.GET)
	public String openExpectation(HttpServletRequest request, HttpServletResponse response) {
		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		int listCount;
		try {
			listCount = ps.getListCount();
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			ArrayList<Project> openlist = bs.selectOpenProject(pi);
			System.out.println(openlist);
			
			request.setAttribute("openlist", openlist);
			request.setAttribute("pi", pi);
		} catch (ProjectSelectListException e) {
			e.printStackTrace();
		}

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

	@RequestMapping(value = "category.bo")
	public String category(HttpServletRequest request, HttpServletResponse response) {

		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		try {

			int listCount = ps.getListCount();
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

			ArrayList<Project> list = ps.selectProjectList(pi);

			request.setAttribute("list", list);
			request.setAttribute("pi", pi);

		} catch (ProjectSelectListException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Board> list = bs.selectBoardList(pi);
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);

		return "board/openBoardList";
	}

	@RequestMapping("searchBoard.bo")
	public String searchBoard(HttpServletRequest request, HttpServletResponse response, String text,
			String searchCondition) {

		if (searchCondition.equals("writer")) {
			sc.setWriter(text);
		}
		if (searchCondition.equals("title")) {
			sc.setTitle(text);
		}
		if (searchCondition.equals("content")) {
			sc.setContent(text);
		}
		System.out.println(sc);
		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		int listCount = bs.getSearchListCount(sc);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<Board> list = bs.selectSearchList(sc, pi);

		if (list != null) {
			request.setAttribute("pi", pi);
			request.setAttribute("list", list);
		} else if (list == null) {
			request.setAttribute("list", "검색 결과가 없습니다");
		}
		return "board/openBoardList";
	}

	@RequestMapping("goInsertBoard.bo")
	public String goInsertBoard(HttpServletRequest request, HttpServletResponse response, String id) {
		request.setAttribute("userId", id);

		return "board/insertBoard";
	}

	@RequestMapping("uploadImg.bo")
	@ResponseBody
	public String uploadImg(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer();
		String root = request.getSession().getServletContext().getRealPath("resources");
		String originFileName = request.getHeader("file-name");
		String filePath = "C:\\Users\\KJS\\git\\FYC\\yourCloud\\src\\main\\webapp\\resources\\uploadFiles\\";
		String saveName = sb.append(new SimpleDateFormat("yyyyMMddHHmmss").format(System.currentTimeMillis()))
				.append(CommonUtils.getRandomString()).append(originFileName.substring(originFileName.lastIndexOf(".")))
				.toString();
		InputStream is;
		try {
			is = request.getInputStream();
			OutputStream os = new FileOutputStream(filePath + saveName);
			int numRead;
			byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			while ((numRead = is.read(b, 0, b.length)) != -1) {
				os.write(b, 0, numRead);
			}
			os.flush();
			os.close();
			// 정보 출력
			sb = new StringBuffer();
			sb.append("&bNewLine=true").append("&sFileName=").append(originFileName).append("&sFileURL=")
					.append("http://localhost:8001/yc/resources/uploadFiles/").append(saveName);
			System.out.println(sb.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sb.toString();
	}

	@RequestMapping("insertBoard.bo")
	public String insertBoard(Board b, String editor, Model model) {
		b.setBcontent(editor);
		bs.insertBoard(b);

		return "redirect:openBoardList.bo";
	}

	@RequestMapping("selectBoardOne.bo")
	public String selectBoardOne(HttpServletRequest request, HttpServletResponse response, String target, Model model) {
		Board b = bs.selectBoardOne(target);
		int currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		Cookie[] cookies = request.getCookies();
		Cookie viewCookie = null;

		if (cookies != null && cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++) {
				// Cookie의 name이 cookie + reviewNo와 일치하는 쿠키를 viewCookie에 넣어줌
				if (cookies[i].getName().equals("cookie" + target)) {
					viewCookie = cookies[i];
				}
			}
		}
		if (viewCookie == null) {

			// 쿠키 생성(이름, 값)
			Cookie newCookie = new Cookie("cookie" + target, "|" + target + "|");

			// 쿠키 추가
			response.addCookie(newCookie);

			// 쿠키를 추가 시키고 조회수 증가시킴
			int result = bs.updateViewCount(target);

		}
		// viewCookie가 null이 아닐경우 쿠키가 있으므로 조회수 증가 로직을 처리하지 않음.
		else {
			// 쿠키 값 받아옴.
			String value = viewCookie.getValue();
		}

		int listCount = bs.getCommentListCount(target);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Comment> c = bs.selectComment(pi, target);

		
		ArrayList<Comment> rc = bs.selectReComment(pi, target);
		model.addAttribute("b", b);
		model.addAttribute("c", c);
		model.addAttribute("rc", rc);
		model.addAttribute("pi", pi);
		return "board/boardDetail";
	}

	@RequestMapping("deleteBoard.bo")
	public String deleteBoard(String target) {

		int result = bs.deleteBoard(target);
		return "redirect:openBoardList.bo";
	}

	@RequestMapping("updateBoardFrm.bo")
	public String updateBoardFrm(String target, Model model) {
		Board b = bs.selectBoardOne(target);
		model.addAttribute("b", b);
		return "board/updateBoardFrm";
	}

	@RequestMapping("updateBoard.bo")
	public String updateBoard(Board b, String editor, Model model) {
		b.setBcontent(editor);
		int result = bs.updateBoard(b);
		return "redirect:openBoardList.bo";
	}

	@RequestMapping("insertComment.bo")
	public ModelAndView insertComment(String text, String target, String writer, ModelAndView mv) {
		Comment c = new Comment();
		c.setbNo(Integer.parseInt(target));
		c.setContent(text);
		c.setWriter(writer);
		int result = bs.insertComment(c);
		mv.setViewName("jsonView");
		return mv;

	}

	@RequestMapping("deleteComment.bo")
	public ModelAndView deleteComment(String target, ModelAndView mv) {
		int result = bs.deleteComment(target);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping("updateComment.bo")
	public ModelAndView updateComment(String text, String target, ModelAndView mv) {
		
		Comment c = new Comment();
		
		c.setcNo(Integer.parseInt(target));
		c.setContent(text);
		
		int result = bs.updateComment(c);
		
		mv.setViewName("jsonView");
		return mv;
		
	}
	
	@RequestMapping("insertReComment.bo")
	public ModelAndView insertReComment(Comment c, ModelAndView mv) {
		int result = bs.insertReComment(c);
		
		mv.setViewName("jsonView");
		return mv;
	}

	@RequestMapping("main.bo")
	public String main(Model model) {
		ArrayList<Project> list = bs.getProject();
		model.addAttribute("list", list);
		return "main/main";
	}
}
