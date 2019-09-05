package com.kh.yc.member.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
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
import com.kh.yc.member.model.vo.NaverMember;

@Controller
@SessionAttributes("loginUser")
public class MemberController {


	@Autowired
	private JavaMailSender mailSender;
	
   //네이버 로그인 BO
   private NaverLoginBO naverLoginBO;
   private String apiResult = null;
   
   //네이버 로그인
   @Autowired
   private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
      this.naverLoginBO = naverLoginBO;
   }
    
   
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
   
   @RequestMapping(value = "joinNaver.me", method = RequestMethod.GET)
   public String joinNaver(Model model) {
      
      return "member/joinNaver";
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
      return "member/resetPw";
   }
   
   
   @RequestMapping(value = "newPwd.me", method = RequestMethod.POST)
   public String newPwd(Member model) {
	  
	   int result = ms.updatePwd(model);
	    
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
   

   // 로그인 첫 화면 요청 메소드
   //네이버 로그인
   @RequestMapping(value = "loginMain.me", method = { RequestMethod.GET, RequestMethod.POST })
      public String login(Model model, HttpSession session) {
   
   
      /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
      String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
      //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
   
      //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
      System.out.println("네이버:" + naverAuthUrl);
   
      //네이버 
      model.addAttribute("url", naverAuthUrl);
   
      return "member/loginMain";

   }
   //네이버 로그인 성공시 callback호출 메소드
   @RequestMapping(value ="callback", method = { RequestMethod.GET,RequestMethod.POST } )
   public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)throws IOException, ParseException {
      /* 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급 */

      
      System.out.println("여기는 callback");
      OAuth2AccessToken oauthToken;
   oauthToken = naverLoginBO.getAccessToken(session, code, state);
   
   //1. 로그인 사용자 정보를 읽어온다,
      apiResult = naverLoginBO.getUserProfile(oauthToken); //String  형식의 json 데이터
      
      //2. String 형식인 apiResult를 Json 형태로 바꿈
      JSONParser parser = new JSONParser();
      Object obj = parser.parse(apiResult);
      JSONObject jsonObj = (JSONObject) obj;
      
      //3. 데이터 파싱
      //Top레벨 단계 _response 파싱
      JSONObject response_obj = (JSONObject)jsonObj.get("response");
      //response의 nickname값 파싱
      String nickname = (String)response_obj.get("nickname");
      System.out.println("nickname nickname : " + nickname);
      String naverId = (String)response_obj.get("id"); //네이버 아이디
      String naverAge = (String) response_obj.get("age"); //연령대
      String naverProfile = (String) response_obj.get("profile_image");
      String naveremail = (String) response_obj.get("email");
      String naverName = (String) response_obj.get("name");
     // String profile = naverProfile.replaceAll("\\","");
		
      System.out.println("naverId => " + naverId);
	  System.out.println("jsonObj =>" + jsonObj);
	  System.out.println("naverage =>" + naverAge);
	  System.out.println("naverProfile =>" + naverProfile);
	  System.out.println("naveremail =>" + naveremail);
	  System.out.println("naverName =>" + naverName);
	  //System.out.println("profile =>" + profile);
	  
	  
	 
	

	  //Member NaverUser ms.Servlet
      //4.파싱 닉네임 세션으로 저장
	  model.addAttribute("loginUser", naverId);
      model.addAttribute("result", apiResult);
      System.out.println("apiResult => " + apiResult);
      //네이버 로그인 성공페이지 view 호출
      
      return "redirect:index.jsp";
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
    
    	int port=465;
    	String recipient = email;
    	String subject = "메일테스트";
    	String body = authNum+"입니다"; 
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
    		

   
    	
    
    	
    	
    	ModelAndView mv= new ModelAndView();
    	mv.setViewName("jsonView");
    	mv.addObject("email",email);
     	mv.addObject("authNum",authNum);
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

}
