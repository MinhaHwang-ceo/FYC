/*
 * package com.kh.yc.admin.controller;
 * 
 * import java.io.File; import java.io.IOException; import java.io.PrintWriter;
 * import java.io.StringWriter; import java.sql.Connection; import
 * java.util.HashMap; import java.util.Map;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.ServletOutputStream; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod;
 * 
 * import com.kh.yc.reward.model.vo.Reward;
 * 
 * import net.sf.jasperreports.engine.JREmptyDataSource; import
 * net.sf.jasperreports.engine.JRException; import
 * net.sf.jasperreports.engine.JasperRunManager;
 * 
 * @Controller public class JasperReportsBrowserDemoServlet extends HttpServlet
 * {
 * 
 * @RequestMapping(value = "reportTest2.ad" , method = RequestMethod.GET) public
 * void doGet(Reward r, HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { ServletOutputStream
 * servletOutputStream = response.getOutputStream();
 * System.out.println(servletOutputStream);
 * 
 * Map<String, Object> map = new HashMap();
 * 
 * 
 * File reportFile = new
 * File(getServletConfig().getServletContext().getRealPath(
 * "/yourCloud/src/main/webapp/resources/jasper/Cloud.jasper")); // jasper // 파일
 * // 위치 // 지정 byte[] bytes = null; try { bytes =
 * JasperRunManager.runReportToPdf(reportFile.getPath(), (Map<String, Object>)
 * map.put("r", r), (Connection) new Reward()); // HashMap에 // map.put(“para1”,
 * System.out.println("ma = " + map); // value1)로 // 파라미터를 // 지정 // 보고서 파일에서는
 * $P{para1}로 파라미터 사용 // JREmptyDataSource 대신 실제 connection객체 사용 가능
 * response.setContentType("application/pdf");
 * response.setContentLength(bytes.length); servletOutputStream.write(bytes, 0,
 * bytes.length); servletOutputStream.flush(); servletOutputStream.close(); }
 * catch (JRException e) { StringWriter stringWriter = new StringWriter();
 * PrintWriter printWriter = new PrintWriter(stringWriter);
 * e.printStackTrace(printWriter); response.setContentType("text/plain");
 * response.getOutputStream().print(stringWriter.toString()); } } }
 */