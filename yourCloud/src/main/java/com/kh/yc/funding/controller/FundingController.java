package com.kh.yc.funding.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.common.CommonUtils;
import com.kh.yc.funding.model.service.FundingService;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.vo.Sign;
import com.kh.yc.reward.model.vo.Reward;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;

@CrossOrigin(origins = "*")
@Controller
@SessionAttributes("RewardNo2")
public class FundingController {

	@Autowired
	private FundingService fs;

	private IamportClient client;

	@RequestMapping(value = "FundingOpen1.fd", method = RequestMethod.GET)
	public String FundingOpen(Locale locale, Model model) {

		return "fundingOpen/FundingOpen1";
	}

	@RequestMapping(value = "FundingOpen2.fd", method = RequestMethod.GET)
	public String fundingInsert(Project p, Model model) {

		return "fundingOpen/FundingOpen2";
	}

	@RequestMapping(value = "FundingOpen3.fd", method = RequestMethod.GET)
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

	@RequestMapping(value = "FundingOpen4.fd", method = RequestMethod.GET)
	public String FundingOpen4(HttpSession session, HttpServletRequest request, HttpServletResponse response, Project p,
			String category, Model model) {

		String projectNo = request.getParameter("projectNo");
		String userNo = request.getParameter("userNo");
		Member m = (Member) session.getAttribute("loginUser");

		int fcategory = fs.updateCategory(p);

		System.out.println("카테코리 와라 제발 : " + p);
		model.addAttribute("p", p);
		model.addAttribute("loginUser" + m);

		return "fundingOpen/FundingOpen4";
	}

	@RequestMapping(value = "FundingOpen5.fd", method = RequestMethod.POST)
	public String FundingOpen5(Model model, Project p, HttpServletRequest request,
			@RequestParam(name = "photo", required = true) MultipartFile photo) {

		System.out.println("photo:" + photo.getSize() + ":");

		if (photo != null && photo.getOriginalFilename().length() != 0) {

			String root = request.getSession().getServletContext().getRealPath("resources");

			System.out.println(root);

			String filePath = root + "\\uploadFiles";
			String origunFileName = photo.getOriginalFilename();
			String ext = origunFileName.substring(origunFileName.lastIndexOf("."));
			String changeName = CommonUtils.getRandomString();
			String fullFilePath = filePath + "\\" + changeName + ext;
			System.out.println(origunFileName + "of");
			try {

				System.out.println("fullFilePath : " + fullFilePath);

				photo.transferTo(new File(fullFilePath));

				Attachment fileVO = new Attachment();

				fileVO.setOriginFileName(origunFileName);
				fileVO.setFileSrc(fullFilePath);
				fileVO.setNewFileName(changeName);
				fileVO.setProjectNo(p.getProjectNo());
				fileVO.setFileLevel("0");
				// insert 파일정보

				String fileName = fs.selectFile(p);
				System.out.println(fileName + "fn");
				int file = fs.selectFileList(p);

				if (file == 0) {
					file = fs.insertFile(fileVO);
				} else if (file > 0) {
					if (fileName.equals(origunFileName)) {
						System.out.println("존재하는 파일입니다");
					} else {
						file = fs.updateFile(fileVO);
					}
				}
				System.out.println("fileVO : " + fileVO.getAttachmentNo());

				p.setMainImg(String.valueOf(fileVO.getAttachmentNo()));

				model.addAttribute("fileVO", fileVO);
				// p.setAttachment(fileVO);
			} catch (Exception e) {

				e.printStackTrace();
				new File(fullFilePath).delete();
			}
		}
		int result = fs.UpdateInfo(p);

		model.addAttribute("p", p);

		return "fundingOpen/FundingOpen4";
	}

	// 다음으로 가기 기본정보에서 ~ 리워드로
	@RequestMapping(value = "FundingOpenNext5.fd", method = RequestMethod.POST)
	public String FundingOpenNext5(Project p, Reward r, Model model, HttpServletRequest request) {
		
		
		
		request.setAttribute("p", p);
		return "fundingOpen/FundingOpen5";
	}

	// 리워드 저장부분
	@RequestMapping("insertreReward.fd")
	public ModelAndView RewardSave(String idx, Project p, HttpServletRequest request, HttpServletResponse response,
			Reward r) {

		ModelAndView mv = new ModelAndView("jsonView2");

		System.out.println("리워드 : " + r);

		int reward = fs.rewardInest(r);

		System.out.println("idx : " + idx);
		
		System.out.println("리워드 번호 : " + r.getRewardNo());
		
		int RewardNo2 = r.getRewardNo();
		
		mv.addObject("RewardNo2",RewardNo2);
		mv.addObject("r", r);
		//mv.setViewName("mvReward");
		/*
		 * List<Reward> list = fs.rewardSelect(r);
		 * 
		 * System.out.println("list : " + list);
		 * 
		 * mv.addObject("r",list );
		 */
		return mv;
	}
	
	// 리워드 업데이트
	@RequestMapping("updateReward.fd")
	public ModelAndView RewardUpdate(String idx, Project p, HttpServletRequest request, HttpServletResponse response,
			@SessionAttribute("RewardNo2") int RewardNo2, Reward r) {
		
		System.out.println("잘받아 오나 확인 : " + r);
		
		ModelAndView mv = new ModelAndView("jsonView2");
		//System.out.println("************************"+mv.getViewName());
		//System.out.println("********************************" + mv);
		
		System.out.println("리워드업데이트 전 : " + r);
		System.out.println("업데이트  키 : " + r.getRewardNo());
		r.setRewardNo(RewardNo2);
		int rewardUP = fs.rewardUpdate(r);
		System.out.println(rewardUP);
		System.out.println("idx : " + idx);

		mv.addObject("r", r);
		System.out.println("리워드업데이트 후 : " +r);

		//List<Reward> list = fs.rewardSelect(r);

		//System.out.println("list : " + list);

		//mv.addObject("r", list);
		
		return mv;

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

	@RequestMapping(value = "/fundingOpen/FundingOpen9.fd", method = RequestMethod.GET)
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

	@RequestMapping("signiture.fd")
	public String signiture(String bNum, String userNo, Model model) {

		model.addAttribute("bNum", bNum);
		model.addAttribute("userId", userNo);

		return "fundingOpen/signiture";
	}

	@RequestMapping("sign.fd")
	public ModelAndView sign(ModelAndView mv, String userNo, String bNum, HttpServletRequest request, Model model) {
		String sign = StringUtils.split(request.getParameter("sign"), ",")[1];
		String root = request.getSession().getServletContext().getRealPath("resources/uploadFiles");
		String attachPath = "\\";

		String fileName = "sign" + System.currentTimeMillis() + ".png";

		Sign s = new Sign();

		s.setUserNo(Integer.parseInt(userNo));
		s.setbNo(Integer.parseInt(bNum));
		System.out.println(s);
		int result = fs.signUser(s);

		if (result > 0) {
			Attachment a = new Attachment();
			a.setFileSrc(root + attachPath);
			a.setProjectNo(Integer.parseInt(bNum));
			a.setOriginFileName(fileName);
			a.setNewFileName(fileName);

			System.out.println(a);
			result = fs.signFile(a);
			try {
				FileUtils.writeByteArrayToFile(new File(root + attachPath + fileName), Base64.decodeBase64(sign));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		model.addAttribute("fileName", fileName);
		mv.setViewName("jsonView");
		return mv;
	}

	@RequestMapping("signProject.fd")
	public String signProject(String bNum, Model model) {
		model.addAttribute("bNum", bNum);

		return "fundingOpen/signProject";
	}

}
