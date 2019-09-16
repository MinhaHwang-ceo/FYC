<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="com.kh.yc.admin.controller.Excel" %>
<%
 request.setCharacterEncoding("UTF-8");
 response.setCharacterEncoding("UTF-8");
 
 /*  String table = "REWARD R";
//table 명
 String columns = "R.PROJECT_NO, P.PROJECT_SHORT_TITLE, M.MEMBER_NAME, R.REWARD_MONEY, R.REWARD_NAME, R.OPTIONS, R.DELIVERY_REQUEST, R.DELIVERY_MONEY, R.START_DATE";
//컬럼명
 String where = "R.PROJECT_NO = 500";
//조건
String join = " INNER JOIN PROJECT P ON R.PROJECT_NO = P.PROJECT_NO INNER JOIN MEMBER M ON P.MEMBER_NO = M.MEMBER_NO ";
  */
  
 String table = "REWARD";
//table 명
 String columns = "PROJECT_NO, REWARD_MONEY, REWARD_NAME, OPTIONS, DELIVERY_REQUEST, DELIVERY_MONEY, START_DATE";
//컬럼명
 String where = "PROJECT_NO = 500";
//조건
String join = " INNER JOIN PROJECT P ON R.PROJECT_NO = P.PROJECT_NO INNER JOIN MEMBER M ON P.MEMBER_NO = M.MEMBER_NO ";

 Excel dbt = Excel.getInstance();
 boolean result = dbt.XLS(table, columns ,where);
//실제 파일을 생성해 줄 메소드 호출
 
 if(result == true){
  
  String path = "C:\\excel\\";
  String name = table + ".xls";
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

