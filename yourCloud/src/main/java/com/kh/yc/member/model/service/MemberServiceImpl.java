package com.kh.yc.member.model.service;

import javax.inject.Inject;
import javax.security.auth.login.LoginException;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.kh.yc.member.model.dao.MemberDao;
import com.kh.yc.member.model.dao.MemberDaoImpl;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.NaverMember;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDaoImpl memberDao;

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	@Autowired
	private JavaMailSender mailSender;

	/*
	 * @Autowired private JavaMailSender javaMailSender;
	 */
	/*
	 * @Autowired private JavaMailSender mailSender;
	 */
	@Override
	public Member loginMember(Member m) throws LoginException {

		Member loginUser = null;

		String encPassword = md.selectEncPassword(sqlSession, m);

		if (!passwordEncoder.matches(m.getUserPwd(), encPassword)) {
			throw new LoginException("로그인 실패!");
		} else {
			loginUser = md.selectMember(sqlSession, m);
		}

		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		int insertMember = md.insertMember(sqlSession, m);
		return insertMember;
	}

	public int idcheck(String userId) {
		return md.countId(sqlSession, userId);
	}

	public int CheckDuplication(String inputId) {

		int idCnt = md.CheckDuplication(sqlSession, inputId);
		return idCnt;
	}

	public String findId(String email) {
	
		String userId=md.findId(sqlSession,email);
		
		return userId;
	}

	public int updatePwd(Member model) {
		return md.updatePwd(sqlSession, model);
	}
//	@Override
//	public int naverInsert(NaverMember nm) {
//		return md.naverInsert(sqlSession, nm);
//	}
	//로그인 체크
//	@Override
//	public NaverMember naverloginCheck(NaverMember nm) {
//		
//		return md.naverloginCheck(sqlSession, nm);
//	}
	
	//로그인 체크

	//네이버 정보 인설트
	@Override
	public int naverInsert(NaverMember nm) {
		System.out.println("Service : " + nm);
		return md.naverInsert(sqlSession, nm);
	}

	@Override
	public int naverLoginCheck(NaverMember nm) {
		// TODO Auto-generated method stub
		return md.naverLoginCheck(sqlSession, nm);
	}

	 
	

	

	

	

}
