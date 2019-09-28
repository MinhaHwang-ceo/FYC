<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="com.kh.yc.admin.controller.Excel" %>
<%@ page import="com.kh.yc.admin.model.vo.Project" %>
<%@ page import="com.kh.yc.admin.controller.AdminController" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
 request.setCharacterEncoding("UTF-8");
 response.setCharacterEncoding("UTF-8");

 String pNo = request.getParameter("projectNo");
 
 System.out.println(pNo);

 String columns = "PROJECT_NO,PROJECT_SHORT_TITLE,MEMBER_NAME,REWARD_MONEY,REWARD_NAME,OPTIONS,DELIVERY_REQUEST,DELIVERY_MONEY,START_DATE,ADJUST_STATE,FUND_NO,ADJUST_NO,PAY_NO";
//컬럼명


String query = " FROM(SELECT DISTINCT R.PROJECT_NO, P.PROJECT_SHORT_TITLE, M.MEMBER_NAME, R.REWARD_MONEY, R.REWARD_NAME, R.OPTIONS, R.DELIVERY_REQUEST, R.DELIVERY_MONEY, R.START_DATE, AD.ADJUST_STATE, F.FUND_NO, AD.PAY_NO, AD.ADJUST_NO FROM FUND_SUCCESS FS LEFT JOIN FUND F ON FS.FUND_NO = F.FUND_NO LEFT JOIN REWARD R ON F.REWARD_NO = R.REWARD_NO LEFT JOIN PROJECT P ON F.PROJECT_NO = P.PROJECT_NO LEFT JOIN PAYMENT PY ON FS.FUND_NO = PY.FUND_NO LEFT JOIN MEMBER M ON PY.MEMBER_NO = M.MEMBER_NO LEFT JOIN SPONSORED S ON S.MEMBER_NO = M.MEMBER_NO LEFT JOIN ADJUST AD ON AD.PAY_NO = PY.PAY_NO WHERE F.MEMBER_NO = S.MEMBER_NO AND R.PROJECT_NO = ";



Excel dbt = Excel.getInstance();
 boolean result = dbt.XLS(columns , query, pNo );
//실제 파일을 생성해 줄 메소드 호출
 
String table = "adjust";
 if(result == true){
  
  String path = "C:\\excel\\";
  String name = table + ".xlsx";
//경로 및 파일명 설정
 
  response.setContentType("application/x-msdownload");
//다운로드 컨트롤 실행
  response.setHeader("Content-Disposition", "attachment;filename=" + name + ";");
//헤더에 파일이름 세팅
  
  File file = new File(path + name);
 
  byte b[] = new byte[(int)file.length()];
 
  if(file.length() > 0 && file.isFile()){ // 0byte이상이고, 해당 파일이 존재할 경우
   BufferedInputStream fin = new BufferedInputStream(new FileInputStream(file)); // 인풋객체생성
   BufferedOutputStream outs = new BufferedOutputStream(response.getOutputStream()); // 응답객체생성
   int read = 0;
   
   try{
    out.clear();
    out = pageContext.pushBody();
 
    while((read = fin.read(b)) > 0){
     outs.write(b,0,read);
    }
    
   }catch(Exception e) {
    e.printStackTrace();
   }finally {
    if(outs!=null) try{outs.close();}catch(Exception e){}
    if(fin!=null) try{fin.close();}catch(Exception e){}
    new File(path + name).delete();
   }
  }else{
   System.out.println("File Not Found!!!");
  }
 }else{
  System.out.println("False");
 }
%>


