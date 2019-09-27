package com.kh.yc.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.common.CommonUtils;
import com.kh.yc.common.Pagination;
import com.kh.yc.member.model.service.MemberService;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.Message;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.service.ProjectService;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;
import com.kh.yc.reward.model.vo.Reward;



@Controller
public class MyPageController {

	@Autowired
	private ProjectService ps;
	
	@Autowired
	private MemberService ms;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	public MyPageController() {
	}

	@RequestMapping("myPage.me")
	public String goMyPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Member mse = (Member) session.getAttribute("loginUser");
		System.out.println(mse);
		return "member/myPage";
	}

	@RequestMapping("changeInfo.me")
	public String changeInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
		System.out.println("내가 돌아왔다."); 
		Member mse = (Member) session.getAttribute("loginUser");
		
		boolean result = ms.checkPwd(mse.getUserId(), mse.getUserPwd());
		System.out.println(result);
		
		if(result) {
			ms.updateMember(mse);
			
			return "redirect:/member/myPage.me";
		}else {
			model.addAttribute("message", "비밀번호 불일치");
			return "member/userCrystal";
		}
	}
	
	@RequestMapping("changeInfo1.me")
	public String changeInfo1(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
		System.out.println("내가 돌아왔다."); 
		Member mse = (Member) session.getAttribute("loginUser");
		
		boolean result = ms.checkPwd(mse.getUserId(), mse.getUserPwd());
		System.out.println(result);
		
		if(result) {
			ms.updateMember(mse);
			
			return "redirect:/member/myPage.me";
		}else {
			model.addAttribute("message", "비밀번호 불일치");
			return "member/userCrystal";
		}
	}

	@RequestMapping("interestProject.me")
	public String interestProject(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		Member mse = (Member) session.getAttribute("loginUser");
		System.out.println(mse);
		
		ArrayList<Project> list = ms.interestProject(mse); 
		
		request.setAttribute("list", list);
		

		return "member/interestProject";
	}

	@RequestMapping("messageBox.me")
	public String messageBox(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		Member member = (Member) session.getAttribute("loginUser");
		//System.out.println(member);
	
		//쪽지 출력
		ArrayList<Message> message = ms.selectMessageList(member);
		
		
		System.out.println(message+"는??");
		
		request.setAttribute("message", message);
		request.setAttribute("member", member);
		
		return "member/messageBox";
	}

	@RequestMapping("sendMessage.me")
	public String sendMessage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		int makerNo = Integer.parseInt(request.getParameter("makerNo"));
		
		request.setAttribute("makerNo", makerNo);
		
		return "member/message";
	}
	
	@ResponseBody
	@RequestMapping("submitMessage.me")
	public int submitMessage(Message message,HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		System.out.println(message);
		
		return ms.insertMessage(message);
	}
	
	
	
	
	
	
	
	
	

	@RequestMapping("myReward.me")
	public String myReward(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		int currentPage = 1;
		System.out.println("11111");
		Member mse = (Member) session.getAttribute("loginUser");
		System.out.println(mse);
		System.out.println("22222");
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
		}
		int listCount;
		System.out.println("333");
		try {
			listCount = ps.getListCount();
			System.out.println("listCount"+listCount);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			ArrayList<Reward> list = ms.selectMyReward(pi, mse);
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
		} catch (ProjectSelectListException e) {
			e.printStackTrace();
		}
		
		System.out.println("ddddddddddddd");
		return "member/myReward";
	}
	/*
	 * @RequestMapping("myMaker.me") public String makerReward(@ModelAttribute
	 * Member m) {
	 * 
	 * return "member/myMaker"; }
	 */
 
	@RequestMapping("showMyRewardDetail.me")
	public String showMyRewardDetail(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		String fundNo = request.getParameter("fundNo");
		int fundNoInt = Integer.parseInt(fundNo);
		System.out.println(fundNoInt);
		
		Reward r = new Reward();
		
		
		r = ms.selectMyRewardDetail(fundNoInt); 
		request.setAttribute("r", r);
		 
		
		
		return "member/myRewardDetail";
	}

@RequestMapping(value = "/myProject.me", method = RequestMethod.GET)
	public String myProject(HttpServletRequest request, HttpServletResponse response) {
	int userNo = Integer.parseInt(request.getParameter("userNo"));
	System.out.println("userNo"+userNo);
		int currentPage = 1;
		if(request.getParameter("currentPage") !=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		try {
		int count=	ps.getListCount2(userNo);
		System.out.println("count::::::"+count );
		PageInfo pi = Pagination.getPageInfo(currentPage, count);
	
		
		ArrayList<Project> list= ps.selectProjectList2(pi);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		} catch (ProjectSelectListException e) {
			e.printStackTrace();
		}
		
		
		
		return "member/myProject";
	}

	@RequestMapping("receiptInfo.me")
	public String receiptInfo(@ModelAttribute Member m,int bNum,HttpServletRequest request, HttpServletResponse response) {

		System.out.println("bNum"+bNum);
		ArrayList<Project> list= ps.receipt(bNum);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());
		
		
		request.setAttribute("list", list);
		
		
		
		return "member/receiptInfo";
	}
	
	
	@RequestMapping("joinAlram")
	public String joinAlram(@ModelAttribute Member m,int userNo,int bNum,String phone,HttpServletRequest request, HttpServletResponse response) {

		System.out.println("bNum"+bNum);

	 ps.joinAlram(bNum,userNo,phone);
		
		return "board/openExpectation/openExpectationRequest";
	}

	@RequestMapping("supporterList.me")

	public String supporterList(@ModelAttribute Member m,int bNum,HttpServletRequest request, HttpServletResponse response) {
		System.out.println("bNum"+bNum);
		ArrayList<Project> list= ps.selectSupportList(bNum);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());
		request.setAttribute("list", list);
		request.setAttribute("bNum", bNum);
		
		return "member/supporterList";
	}
	
	@RequestMapping("supporterList2.me")
	public ModelAndView  supporterList2(ModelAndView mv, @ModelAttribute Member m,int bNum,String standard,HttpServletRequest request, HttpServletResponse response) {
	System.out.println("bNum"+bNum);
		System.out.println("standard"+standard);
		
	SupportList sl= new SupportList();
	sl.setStatus(standard);
	sl.setProjectNo(bNum);

		ArrayList<Project> list= ps.selectSupportList2(sl);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());

		
		mv.setViewName("jsonView");
		mv.addObject("list", list);
	
		return mv;
		
	}
	
	
	

	@RequestMapping("supporterList3.me")
	public ModelAndView  supporterList3(ModelAndView mv, @ModelAttribute Member m,int bNum,String standard,HttpServletRequest request, HttpServletResponse response) {
	System.out.println("bNum"+bNum);
		System.out.println("standard"+standard);
		
	SupportList sl= new SupportList();
	sl.setStatus(standard);
	sl.setProjectNo(bNum);

		ArrayList<Project> list= ps.selectSupportList3(sl);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());

		
		mv.setViewName("jsonView");
		mv.addObject("list", list);
	
		return mv;
		
	}
	
	
	
	@RequestMapping("supporterList4.me")
	public ModelAndView  supporterList3(ModelAndView mv, @ModelAttribute Member m,int bNum,HttpServletRequest request, HttpServletResponse response) {
	System.out.println("bNum"+bNum);

		
	SupportList sl= new SupportList();

	sl.setProjectNo(bNum);

		ArrayList<Project> list= ps.selectSupportList4(sl);
		System.out.println("list:::"+list);
		System.out.println("listsize"+list.size());

		
		mv.setViewName("jsonView");
		mv.addObject("list", list);
	
		return mv;
		
	}
	
	
	
	
	@RequestMapping(value = "excelDown.do")

	public void excelDown(int bNum,HttpServletResponse response) throws Exception {



	    // 후원자 목록조회

		ArrayList<SupportList> list= ps.selectSupportListExcel(bNum);

		System.out.println("list출력:::::"+list);

	    // 워크북 생성

	    Workbook wb = new HSSFWorkbook();

	    Sheet sheet = wb.createSheet("DeliveryDown");

	    Row row = null;

	    Cell cell = null;

	    int rowNo = 0;



	    // 테이블 헤더용 스타일

	    CellStyle headStyle = wb.createCellStyle();

	    // 가는 경계선을 가집니다.

	    headStyle.setBorderLeft(BorderStyle.THIN);

	    headStyle.setBorderLeft(BorderStyle.THIN);

	    headStyle.setBorderRight(BorderStyle.THIN);

	    headStyle.setBorderTop(BorderStyle.THIN);



	    headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());

	    headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);



	    // 데이터는 가운데 정렬합니다.

	    headStyle.setAlignment(HorizontalAlignment.CENTER);



	    // 데이터용 경계 스타일 테두리만 지정

	    CellStyle bodyStyle = wb.createCellStyle();

	    bodyStyle.setBorderTop(BorderStyle.THIN);

	    bodyStyle.setBorderBottom(BorderStyle.THIN);

	    bodyStyle.setBorderLeft(BorderStyle.THIN);

	    bodyStyle.setBorderRight(BorderStyle.THIN);



	    // 헤더 생성

	    row = sheet.createRow(rowNo++);

	    cell = row.createCell(0);

	    cell.setCellStyle(headStyle);

	    cell.setCellValue("후원자이름");

	    cell = row.createCell(1);

	    cell.setCellStyle(headStyle);

	    cell.setCellValue("결제현황");

	    cell = row.createCell(2);

	    cell.setCellStyle(headStyle);

	    cell.setCellValue("배송현황");

	    cell = row.createCell(3);

	    cell.setCellStyle(headStyle);

	    cell.setCellValue("운송장 번호");



	    // 데이터 부분 생성

	    for(SupportList vo : list) {

	        row = sheet.createRow(rowNo++);

	        cell = row.createCell(0);

	        cell.setCellStyle(bodyStyle);

	        cell.setCellValue(vo.getMemberName());
	        
	        cell = row.createCell(1);

	        cell.setCellStyle(bodyStyle);

	        cell.setCellValue(vo.getPayState());
	        

	        cell = row.createCell(2);

	        cell.setCellStyle(bodyStyle);

	        cell.setCellValue(vo.getStatus());

	        cell = row.createCell(3);

	        cell.setCellStyle(bodyStyle);

	        cell.setCellValue(vo.getInvoiceNum());
	        

	    }



	    // 컨텐츠 타입과 파일명 지정

	    response.setContentType("ms-vnd/excel");

	    response.setHeader("Content-Disposition", "attachment;filename=supportListDown.xls");



	    // 엑셀 출력

	    wb.write(response.getOutputStream());

	    wb.close();

	}


	
	
	
	
	

	
	@RequestMapping(value = "/excelUp.do", method = RequestMethod.POST)
    public void ExcelUp(HttpServletRequest req, HttpServletResponse rep){
      
        Map returnObject = new HashMap(); 
        
        
        System.out.println("1111111");
        try { // MultipartHttpServletRequest 생성 
            MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) req; 
            Iterator<String> iter = mhsr.getFileNames(); 
            MultipartFile mfile = null; 
            String fieldName = ""; 
        	System.out.println("???!!!!!!?????");
            // 값이 나올때까지
            while (iter.hasNext()) {
            	System.out.println("?????????");
                fieldName = iter.next().toString(); // 내용을 가져와서 
                mfile = mhsr.getFile(fieldName); 
                String origName; 
                origName = new String(mfile.getOriginalFilename().getBytes("8859_1"), "UTF-8"); //한글꺠짐 방지 // 파일명이 없다면 
                
                returnObject.put("params", mhsr.getParameterMap()); 
                
                
                System.out.println("origName"+origName);
                String path="C:\\Users\\3214\\git\\FYC\\yourCloud\\src\\main\\webapp\\resources\\uploadFiles\\"+origName;
                System.out.println("path:::"+path);
                //위치 및 파일
                ps.getExcelUpload(path);
            }
            
            } catch (UnsupportedEncodingException e) { // TODO Auto-generated catch block 
                e.printStackTrace(); 
            }catch (IllegalStateException e) { // TODO Auto-generated catch block 
                e.printStackTrace(); 
            } catch (IOException e) { // TODO Auto-generated catch block 
                e.printStackTrace(); 
            }
 
        
    }

	@RequestMapping("fileSave")
	   public ModelAndView FundingOpen5(ModelAndView mv, Project p, HttpServletRequest request,
	      @RequestParam(name ="file", required=false) MultipartFile file) {

	      System.out.println("file:" + file.getSize() + ":");

	      if (file != null && file.getOriginalFilename().length() != 0) {

	         String root = request.getSession().getServletContext().getRealPath("resources");

	         System.out.println(root);

	         String filePath = root + "\\uploadFiles";
	         String originFileName = file.getOriginalFilename();
	         System.out.println("originFileName::::"+originFileName);
	         String ext = originFileName.substring(originFileName.lastIndexOf("."));
	         String newFileName = originFileName.substring(0,originFileName.indexOf("."));
	  System.out.println("newFileName:::::"+newFileName);
	         String fullFilePath = filePath + "\\" + newFileName  + ext;
	         System.out.println(originFileName + "of");
	         try {

	            System.out.println("fullFilePath : " + fullFilePath);

	            file.transferTo(new File(fullFilePath));


	       
	         } catch (Exception e) {

	            e.printStackTrace();
	            new File(fullFilePath).delete();
	         }
	      }

			mv.setViewName("jsonView");
			return mv;
		
	   }
	
	
	
}
