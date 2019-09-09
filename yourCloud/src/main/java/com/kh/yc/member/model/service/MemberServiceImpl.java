package com.kh.yc.member.model.service;

import java.util.List;

import javax.inject.Inject;
import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.yc.member.model.dao.MemberDao;
import com.kh.yc.member.model.dao.MemberDaoImpl;
import com.kh.yc.member.model.vo.Member;

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


	public int CheckDuplication(String inputId) {

		int idCnt = md.CheckDuplication(sqlSession, inputId);
		return idCnt;
	}

	public String findId(String email) {
	
		String userId=md.findId(sqlSession,email);
		
		return userId;
	}

	public void updatePwd(String email, String userPwd) {
		md.updatePwd(sqlSession, email,userPwd);

		
		}

	public List<Member> emailList() {

		List<Member> list=md.emailList(sqlSession);
		
		return list;
	}
	

}
