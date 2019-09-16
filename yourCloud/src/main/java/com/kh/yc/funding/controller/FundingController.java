package com.kh.yc.funding.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.common.CommonUtils;
import com.kh.yc.funding.model.service.FundingService;
import com.kh.yc.member.model.vo.Member;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;

@CrossOrigin(origins = "*")
@Controller
public class FundingController {

	@Autowired
	private FundingService fs;

	private IamportClient client;

	@RequestMapping(value = "FundingOpen.fd", method = RequestMethod.GET)
	public String FundingOpen(Locale locale, Model model) {

		return "fundingOpen/FundingOpen1";
	}

	@RequestMapping(value = "Funding1.fd", method = RequestMethod.GET)
	public String fundingInsert(Project p, Model model) {

		return "fundingOpen/FundingOpen2";
	}

	@RequestMapping(value = "Funding2.fd", method = RequestMethod.GET)
	public String FundingOpen2(HttpSession session, Project p, Model model) {
		String ranNum = "";
		boolean tf = true;
		while (tf) {
			int ran = (int) (Math.random() * 1000000) + 1;
			ranNum = String.valueOf(ran);
			System.out.println(ran);
			if (ranNum.length() == 6) {
				int check = fs.pNoCheck(ranNum);
				System.out.println("check :" + check);
				if (check > 0) {
					continue;
				} else {
					break;
				}
			}
		}
		Member m = (Member) session.getAttribute("loginUser");
		Project pro = new Project();
		pro.setProjectNo(Integer.parseInt(ranNum));
		pro.setUserNo(m.getUserNo());
		
		
		int check = fs.insertProjectNum(pro);
		
		model.addAttribute("pro", pro);
		
		return "fundingOpen/FundingOpen3";

	}
	// System.out.println(p.getCategory() + "option");

	// p.setProjectNo(random);
	// System.out.print(p.getProjectNo());

	/* List<Project> list = fs.projectListInfo(p.getProjectNo()); */

	@RequestMapping(value = "FundingOpen3.fd", method = RequestMethod.GET)
	public String FundingOpen4(HttpSession session, HttpServletRequest request, HttpServletResponse response, Project p, String category, Model model) {
		String projectNo = request.getParameter("projectNo");
		String userNo = request.getParameter("userNo");
		Member m = (Member) session.getAttribute("loginUser");
		
		int fcategory = fs.updateCategory(p);
		
		System.out.println("카테코리 와라 제발 : " + p);
		model.addAttribute("p", p);
		model.addAttribute("loginUser" +  m);
		

		return "fundingOpen/FundingOpen4";
	}

	@RequestMapping(value = "FundingOpen4.fd", method = RequestMethod.POST )
	public String FundingOpen5(Model model, Project p, HttpServletRequest request,
			@RequestParam(name="photo", required=false) MultipartFile photo) {
		
		//System.out.println("이미지 : " + photo.getName());
		System.out.println(p);
		
//		String root = request.getSession().getServletContext().getRealPath("resources");
//		
//		System.out.println(root);
//		
//		String filePath = root + "\\uploadFiles";
//		
//		String origunFileName = photo.getOriginalFilename();
//		String ext = origunFileName.substring(origunFileName.lastIndexOf("."));
//		String changeName = CommonUtils.getRandomString();
//		
		try {
//			photo.transferTo(new File(filePath + "\\" + changeName + ext));
			int result = fs.UpdateInfo(p);
//		
		} catch (Exception e) {
//			new File(filePath + "\\" + changeName + ext).delete();
//			
		}
		
		return "fundingOpen/FundingOpen4";
	}

	@RequestMapping(value = "FundingOpen6.fd", method = RequestMethod.POST)
	public String FundingOpen6(Locale locale, Model model) {

		return "fundingOpen/FundingOpen6";
	}

	@RequestMapping(value = "FundingOpen7.fd", method = RequestMethod.GET)
	public String FundingOpen7(Locale locale, Model model) {

		return "fundingOpen/FundingOpen7";
	}

	@RequestMapping(value = "FundingOpen8.fd", method = RequestMethod.GET)
	public String FundingOpen8(Locale locale, Model model) {

		return "fundingOpen/FundingOpen8";
	}

	@RequestMapping(value = "FundingOpen9.fd", method = RequestMethod.GET)
	public String FundingOpen9(Locale locale, Model model) {

		return "fundingOpen/FundingOpen9";
	}

	@RequestMapping("payTest.fd")
	public String payTest() {

		return "fundingOpen/payTest";
	}

	@RequestMapping("getToken.fd")
	public ModelAndView getToken(String imp_key, String imp_secret, ModelAndView mv) {
		System.out.println(imp_key);
		System.out.println(imp_secret);

		String api_key = imp_key;
		String api_secret = imp_secret;

		client = new IamportClient(api_key, api_secret);

		try {
			IamportResponse<AccessToken> auth_response = client.getAuth();
			System.out.println(auth_response);

		} catch (IamportResponseException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());

			switch (e.getHttpStatusCode()) {
			case 401:
				// TODO
				System.out.println(401);
				break;
			case 500:
				// TODO
				System.out.println(500);
				break;
			}
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mv.setViewName("jsonView");

		return mv;
	}

}
