package com.kh.yc.member.controller;

import java.io.IOException;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.tagext.TryCatchFinally;

import org.apache.catalina.SessionListener;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.yc.member.model.service.MemberService;
import com.kh.yc.member.model.service.MemberServiceImpl;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.NaverMember;

@Controller
@SessionAttributes("loginUser")
public class NaverController {

	
	// 네이버 로그인 BO
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	// 네이버 로그인
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	@Autowired
	private MemberService ms;
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

	@RequestMapping(value = "joinNaver.me", method = RequestMethod.GET)
	public String joinNaver(Model model) {

		return "member/joinNaver";
	}
	
	
	
	// 로그인 첫 화면 요청 메소드
	// 네이버 로그인
	@RequestMapping(value = "loginMain.me", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {

		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&

		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);

		// 네이버
		model.addAttribute("url", naverAuthUrl);

		return "member/loginMain";

	}

	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, HttpServletRequest request, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
		/* 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급 */

		//System.out.println("여기는 callback");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		// 1. 로그인 사용자 정보를 읽어온다,
		apiResult = naverLoginBO.getUserProfile(oauthToken); // String 형식의 json 데이터

		// 2. String 형식인 apiResult를 Json 형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;

		// 3. 데이터 파싱
		// Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		// response의 nickname값 파싱
		String nickname = (String) response_obj.get("nickname");
		//System.out.println("nickname nickname : " + nickname);
		String naverId = (String) response_obj.get("id"); // 네이버 아이디
		String naverAge = (String) response_obj.get("age"); // 연령대
		String naverProfile = (String) response_obj.get("profile_image");
		String naveremail = (String) response_obj.get("email");
		String naverName = (String) response_obj.get("name");
		//String profile = naverProfile.replaceAll("\\\\","");
		// naverAge.substring(0, 2);
		
//		System.out.println("naverId => " + naverId);
//		System.out.println("jsonObj =>" + jsonObj);
//		System.out.println("naverage =>" + naverAge);
//		System.out.println("naverProfile =>" + naverProfile);
//		System.out.println("naveremail =>" + naveremail);
//		System.out.println("naverName =>" + naverName);
		//System.out.println("profile =>" + profile);
		
		naverAge = naverAge.split("-")[0];
		
		NaverMember nm = new NaverMember();
		//nm.setProfile(profile);
		nm.setUserName(naverName);
		nm.setUserId(naverId);
		nm.setAge(Integer.parseInt(naverAge));
		nm.setEmail(naveremail);
		// Member NaverUser ms.Servlet
		// 4.파싱 닉네임 세션으로 저장
		
		//System.out.println("apiResult => " + apiResult);
	
		// 네이버 로그인 성공페이지 view 호출
		int chk = ms.naverLoginCheck(nm);

		if (chk < 1) {
			int insert = ms.naverInsert(nm);
			
			return "member/myPage.me";
		}else {
			
			model.addAttribute("loginUser", nm);
			
			return "redirect:index.jsp";
		}
		

//		if(naverLogin == null) {
//			
//		}else {
//			
//		}
		
		
		
		
		
//		int result = ms.naverInsert(nm);
//		NaverMember naverLogin = ms.naverloginCheck(nm);
//		if(naverLogin != null) {
//			model.addAttribute("nm", apiResult);
//			session.setAttribute("session", nm);
//			return "redirect:/index.jsp";
//		}else if(result > 0) {
//		
//			return "Member/joinNaver";
//		}else {
//			model.addAttribute("msg", "회원 가입 실패!");
//			return "common/errorPage";
//			
//		}
		 
	}
		
	/*
	 * // 네이버 회원정보 입력
	 * 
	 * @RequestMapping(value = "naverInsert.me") public String
	 * NaverInsert(@ModelAttribute NaverMember nm, Model model) {
	 * 
	 * System.out.println(nm.getUserName() + "fucku");
	 * System.out.println(nm.getEmail() + "mail");
	 * 
	 * ms.naverInsert(nm);
	 * 
	 * return "redirect:/index.jsp"; }
	 */

	/*
	 * @RequestMapping(value = "naverInsert.me") 
	 * public ModelAndView test() {\
	 * 
	 * ModelAndView mav = new ModelAndView("/index.jsp");
	 * 
	 * mav.addObject("key", "value");
	 * 
	 * return mav; }
	 */
}
