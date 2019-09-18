package com.kh.yc.admin.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.kh.yc.admin.model.dao.ConnectionDao;


public class Excel {



private static Excel instance = new Excel();
public static Excel getInstance(){
	  return instance;
	 }
 private Excel(){}
 
 
 public boolean XLS(String columns, String query, String pNo) throws Exception{
	 
  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  
  String sql = "";
  boolean result = true;
  String col3 = columns + ",";
  String[] col = col3.split(",");
  String col2 = columns;
  String table = "adjust";
  String projectNo = pNo;
  System.out.println(query);
  System.out.println("**************************" + col3);
  System.out.println("**************************c2" + col2);
  System.out.println("**************************" + col);
  System.out.println("**************************pnononons" + projectNo);
  System.out.println(Arrays.toString(col));
  try{
   HSSFWorkbook wb = new HSSFWorkbook();
   HSSFSheet sheet = wb.createSheet(table);
   HSSFRow row = null;
   
   conn = ConnectionDao.getInstance().getConnection();
   
   
   System.out.println("conn????????????????????????/" + conn);
//미리 만들어 놓은 db connection
   if(query == null || query == "" || query.equals("")){
    sql = "SELECT " + col2 + query + projectNo + ")";
   }else{
    sql = "SELECT " + col2 + query  + projectNo + ")";
   }
   
   System.out.println("sql ==============" + sql);
   pstmt = conn.prepareStatement(sql);
   rs = pstmt.executeQuery();
   System.out.println(col.length);
   
   while(rs.next()){
    row = sheet.createRow(rs.getRow());
    for(int i = 0; i < col.length; i++){
     row.createCell(i).setCellValue(col[i].toString());
     System.out.println("row[" + i +  "] = "  + col[i].toString());
    }
    
    for(int i = 0; i < col.length; i++){
     row.createCell(i).setCellValue(rs.getString(col[i].toString()));
    
     System.out.println("col[" + i +  "] = " + rs.getString(col[i].toString()));
    }
   }
			 
   FileOutputStream fileOut = new FileOutputStream("C:\\excel\\" + table + ".xlsx");
   wb.write(fileOut);
   fileOut.close();

  }catch(IOException ex){
   result = false;
   ex.printStackTrace();
  }catch(Exception ex){
   result = false;
   ex.printStackTrace();
  }finally{
   System.out.println("메소드 끝");
   if(rs != null) try{rs.close();}catch(SQLException ex){}
   if(pstmt != null) try{pstmt.close();}catch(SQLException ex){}
   if(conn != null) try{conn.close();}catch(SQLException ex){}
  }
  return result;
 }
}


