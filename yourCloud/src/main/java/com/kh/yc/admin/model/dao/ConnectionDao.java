package com.kh.yc.admin.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class  ConnectionDao{
 static ConnectionDao c_dao;

 static {
 }
 private ConnectionDao() {
  try {
//   Class.forName("org.gjt.mm.mysql.Driver");
   Class.forName("oracle.jdbc.driver.OracleDriver");
   //System.out.println("드라이버 로드");
  } catch (ClassNotFoundException e) {
   e.printStackTrace();
  }
 }

 public static ConnectionDao getInstance() {
  if (c_dao == null) {
   c_dao = new ConnectionDao();
  }
  return c_dao;
 }
 
 
 public Connection getConnection() throws SQLException {
 Connection conn = null;
 String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
 String DB_USER = "CLOUD";
 String DB_PASSWORD = "CLOUD";
 //System.out.println("드라이브 커넥션 전");
 conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
 //System.out.println("커넥션 ok");
 return conn;
 }
}



