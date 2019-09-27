package com.kh.yc.member.controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.yc.member.model.service.MemberServiceImpl;
import com.kh.yc.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {

	@Autowired
	private JavaMailSender mailSender;


	@Autowired
	private MemberServiceImpl ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	/*
	 * @Autowired private JavaMailSenderImpl mailsender;
	 * 
	 */

	/*
	 * @RequestMapping(value = "loginMain.me", method = RequestMethod.GET) public
	 * String home(Locale locale, Model model) {
	 * 
	 * return "member/loginMain";
	 * 
	 * }
	 */

    
    
    
     @RequestMapping(value = "joinMain.me", method = RequestMethod.GET)
 	public String join(Locale locale, Model model) {
 		
 		return "member/joinMain";
 	}
    
   

   @RequestMapping(value = "joinInput.me", method = RequestMethod.POST)
   public String joinIdPw(Member m, Model model) {
      String encPassword = passwordEncoder.encode(m.getUserPwd());
      
      
      m.setUserPwd(encPassword);
      
      System.out.println(m);
   
      System.out.println("insertMember : " + m);
      
      int result = ms.insertMember(m);
      
      if(result > 0) {
         return "member/loginMain";
      }else {
         model.addAttribute("msg", "회원 가입 실패!");
         return "common/errorPage";
      }
   
      
   
   }
   
   
   @RequestMapping(value = "findId.me", method = RequestMethod.GET)
   public String findId(Model model) {
      
      return "member/findId";
   }
   
   @RequestMapping(value = "findPw.me", method = RequestMethod.GET)
   public String findPw(Model model) {
      
      return "member/findPw";
   }
   
   @RequestMapping(value = "resetPw.me", method = RequestMethod.GET)
   public String resetPw(String email,Model model) {
      System.out.println("email::"+email);
      model.addAttribute("email", email);
      return "member/resetPw";
   }
   
   
   @RequestMapping(value = "newPwd.me", method = RequestMethod.POST)
   public String newPwd(String email,String userPwd,Member model) {
	   String userPwd2 = passwordEncoder.encode(userPwd);
	    
	   ms.updatePwd(email,userPwd2);
	    
	         return "member/loginMain";
	      
	
   }
   
   
   @RequestMapping(value="login.me")
   public String loginCheck(Member m, Model model) {
      

      
      try {
         Member loginUser = ms.loginMember(m);
         
         model.addAttribute("loginUser", loginUser);
         
         return "redirect:index.jsp";
         
      } catch (LoginException e) {
         model.addAttribute("msg", e.getMessage());
         return "common/errorPage";
      }
      

   }
   
   @RequestMapping(value = "joinIdPw.me", method = RequestMethod.GET)
   public String joinIdPw(Model model) {
      
      return "member/joinIdPw";
   }

      

   @RequestMapping("logout.me")
   public String logout(SessionStatus status) {
      status.setComplete();
      
      return "redirect:index.jsp";
   }
   @RequestMapping("findId")
   public ModelAndView find(String email,ModelAndView model) {
 
	   
	   String userId=ms.findId(email);
	   
	   
	   System.out.println("::::::::::::::::::::"+userId);
	   
	   model.addObject("userId",userId);
       
       model.setViewName("jsonView");
       
       System.out.println(model);
       return model;
   }


    @RequestMapping("duplicationCheck.me")
   
       public ModelAndView CheckDuplication(String userId,ModelAndView model) {
         
       System.out.println("userId:"+userId);
       
         String checkRst="";
         int idCnt = ms.CheckDuplication(userId);
         System.out.println("idCnt"+idCnt);
         if(idCnt > 0) {
          
            checkRst = "F";
            
            }else {
            checkRst = "S";
         }
         
         System.out.println("checkRst"+checkRst);
         
         model.addObject("checkRst",checkRst);
         
         model.setViewName("jsonView");
         
         System.out.println(model);
         return model;
      }
    
    @RequestMapping("emailAuth.do")
    public ModelAndView emailAuth(String email,String userId,ModelAndView model) throws AddressException, MessagingException {
    	
   System.out.println("email"+email);
    	String authNum="";
    	authNum=RandomNum();
    

    	
		/*
		 * sendEmail(email.toString(), authNum);
		 * 
		 */

		String host = "smtp.gmail.com";
		final String username = "dhtnwjd6350";
		final String password = "ferc yjaa veuk bppi";

		int port = 465;
		String recipient = email;
		String subject = "메일테스트";
		String body = authNum + "입니다";
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성
		props.put("mail.smtp.host", host);// SMTP 서버 정보 설정
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		// Session 생성
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un = username;
			String pw = password;

			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); //
		Message mimeMessage = new MimeMessage(session);
		// MimeMessage 생성
		mimeMessage.setFrom(new InternetAddress("dhtnwjd6350@gmail.com"));
		// 발신자 셋팅
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		// 수신자셋팅
		mimeMessage.setSubject(subject); // 제목셋팅
		mimeMessage.setText(body); // 내용셋팅
		Transport.send(mimeMessage);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsonView");
		mv.addObject("email", email);
		mv.addObject("authNum", authNum);
		return mv;
	}

	private String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i <= 6; i++) {
			int n = (int) (Math.random() * 10);
			buffer.append(n);

		}
		return buffer.toString();
	}
	
	
	   @RequestMapping(value = "massEmail", method = RequestMethod.POST)
	    public String massEmail(String title,String content,ModelAndView model) throws AddressException, MessagingException {
	    	
	   System.out.println("title"+title);
	    

	   	List<Member> list=  ms.emailList();
	   System.out.println("list:::::::::::::::::::::::::::::::::"+list);
	
	    	
	    	String host = "smtp.gmail.com"; 
	    	final String username = "dhtnwjd6350";  
	    	final String password = "ferc yjaa veuk bppi"; 
	    
	    	
	    	for(int i=0;i<list.size();i++) {
	    	
	    	
	    	
	    	
	    	int port=465;
	    	String recipient = list.get(i).getEmail();
	    	String subject = title;
	    	String body =content; 
	    	Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
	    	props.put("mail.smtp.host", host);// SMTP 서버 정보 설정
	    	props.put("mail.smtp.port", port);
	    	props.put("mail.smtp.auth", "true");
	    	props.put("mail.smtp.ssl.enable", "true");
	    	props.put("mail.smtp.ssl.trust", host);
	    	//Session 생성
	    	Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator()
	    	{ String un=username; String pw=password; protected javax.mail.PasswordAuthentication 
	    	getPasswordAuthentication() { return new javax.mail.PasswordAuthentication(un, pw); } });
	    	session.setDebug(true); //
	   Message mimeMessage = new MimeMessage(session); 
	    			//MimeMessage 생성
	    			mimeMessage.setFrom(new InternetAddress("dhtnwjd6350@gmail.com"));
	    			//발신자 셋팅 
	    			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); 
	    			//수신자셋팅 
	    			mimeMessage.setSubject(subject); //제목셋팅 
	    			mimeMessage.setText(body); //내용셋팅 
	    			Transport.send(mimeMessage); 
	    		

	    	}
	    	
	    
	    	
	    	
		/*
		 * ModelAndView mv= new ModelAndView(); mv.setViewName("jsonView");
		 * mv.addObject("email",email); mv.addObject("authNum",authNum);
		 */
	    	return "admin/email";
	    }

}
