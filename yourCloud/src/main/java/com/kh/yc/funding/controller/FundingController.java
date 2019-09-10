package com.kh.yc.funding.controller;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.service.FundingService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
@CrossOrigin(origins="*")
@Controller
public class FundingController {
	
	@Autowired
	private FundingService fs;
	
	private IamportClient client;


	@RequestMapping(value = "FundingOpen.fd", method = RequestMethod.GET)
	public String FundingOpen(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen1";
	}
	
	@RequestMapping(value = "FundingOpen2.fd", method = RequestMethod.GET)
	public String fundingInsert(Project p, Model model) {
		String ranNum = "";
		boolean tf= true;
		while (tf) {
			int ran = (int)(Math.random() * 1000000)+1;
			ranNum = String.valueOf(ran);
			System.out.println(ran);
			if(ranNum.length()==6) {
				int check =  fs.pNoCheck(ranNum);
				System.out.println("check :" + check);
				if(check>0) {
					continue;
				} else {
					break;
				}
			}
		}
		int check = fs.insertProjectNum(ranNum);
		
		model.addAttribute("ranNum", ranNum);
		return "fundingOpen/FundingOpen2";
	}
	@RequestMapping(value = "FundingOpen3.fd", method = RequestMethod.GET)
	public String FundingOpen2(Project p, Model model) {
		
		int fcategory = fs.updatefcategory(p);
		
		//int fcategory = fs.updatefcategory(p);
		
		
		
		
		
		return "fundingOpen/FundingOpen3";
		
	}
		//System.out.println(p.getCategory() + "option");
		
		//p.setProjectNo(random);
		//System.out.print(p.getProjectNo());
		
		
		
		/* List<Project> list = fs.projectListInfo(p.getProjectNo()); */
		
	@RequestMapping(value = "FundingOpen4.fd", method = RequestMethod.GET)
	public String FundingOpen4(Project p, Model model) {
		
		
		/* List<Project> list = fs.projectListInfo(); */
		
		return "fundingOpen/FundingOpen4";
	}
	
	@RequestMapping(value = "FundingOpen5.fd", method = RequestMethod.GET)
	public String FundingOpen5(Locale locale, Model model) {
		
		return "fundingOpen/FundingOpen5";
	}
	
	@RequestMapping(value = "FundingOpen6.fd", method = RequestMethod.GET)
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
	public ModelAndView getToken(String imp_key, String imp_secret,ModelAndView mv) {
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
			
			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				System.out.println(401);
				break;
			case 500 :
				//TODO
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
