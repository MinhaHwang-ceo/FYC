package com.kh.yc.project.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.service.ProjectService;
import com.kh.yc.project.model.vo.OpenAlarm;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Controller
@EnableScheduling
public class ProjectController {

	@Autowired
	private ProjectService ps;
	
	
	public ProjectController() {}
	
	
    @Scheduled(cron ="0 57 1  * * ?")

	  public void SMS() {
    	
    	
    	 System.out.println("들어옴?");
         
         SimpleDateFormat present = new SimpleDateFormat ( "yy-MM-dd");
     
         Calendar time = Calendar.getInstance();
         String present2 = present.format(time.getTime());
         List<OpenAlarm> alarm = ps.getCount(present2);
    	
    	
         for(int i=0;i<alarm.size();i++) {
      	   List<OpenAlarm> alarm2 = ps.getCount2(alarm.get(i).getProjectNo());

         
      	   	for(int j=0;j<alarm2.size();j++) {
           
          	   String phone=alarm2.get(j).getMemberPhone();
          	   
          	System.out.println("phone"+phone);
          
          	
            String api_key = "NCSHVDD1TZOT03A8";
    	    String api_secret = "UAFD5H2F7R13AVKSJYFWGIV1GJGHUWC9"; 
    	    Message coolsms = new Message(api_key, api_secret);

    	    // 4 params(to, from, type, text) are mandatory. must be filled
    	    HashMap<String, String> params = new HashMap<String, String>();
    	    params.put("to", phone); // 수신번호
    	    params.put("from", "01030716350"); // 발신번호
    	    params.put("type", "SMS"); // Message type ( SMS, LMS, MMS, ATA )
    	    params.put("text", "Test Message"); // 문자내용    
    	    params.put("app_version", "JAVA SDK v2.2"); // application name and version

    	
    	    try {
    	      JSONObject obj = (JSONObject) coolsms.send(params);
    	      System.out.println(obj.toString());
    	    } catch (CoolsmsException e) {
    	      System.out.println(e.getMessage());
    	      System.out.println(e.getCode());
    	    }
    	
    	
    	
    	
    	




      	   	}
         }
    }


    
    
    
	@RequestMapping("SelfTest")
	public String goMyPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "common/SelfTest";
	}
    
    
    
    
    
    
    
    
    
    
    
    
    
}
