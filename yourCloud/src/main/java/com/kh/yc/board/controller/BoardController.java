package com.kh.yc.board.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.yc.board.model.service.BoardService;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.common.CommonUtils;
import com.kh.yc.common.Pagination;

@Controller
public class BoardController {
	@Autowired
	BoardService bs;
	@Autowired
	SearchCondition sc;

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
				.append(CommonUtils.getRandomString()).append(originFileName.substring(originFileName.lastIndexOf("."))).toString();
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
	public String insertBoard(Board b, String editor ,Model model) {
		b.setBcontent(editor);
		System.out.println(b);
		int result = bs.insertBoard(b);
		return"";
		
	}
}
