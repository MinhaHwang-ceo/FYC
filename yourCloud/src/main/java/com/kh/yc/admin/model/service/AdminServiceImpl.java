package com.kh.yc.admin.model.service;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.yc.admin.model.dao.AdminDao;
import com.kh.yc.admin.model.dao.AdminDaoImpl;
import com.kh.yc.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDaoImpl AdminDao;
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao ad;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	
	
	
	@Override
	public List<Member> memberList() {
		return ad.memberList(sqlSession);
	}

	@Override
	public Member viewMember(String userNo) {
		return AdminDao.viewMember(sqlSession, userNo);
	}

	@Override
	public void deleteMember(String userId) {
		
	}

	@Override
	public void updateMember(Member vo) {
		
		System.out.println("memberVo3 : " + vo);
		AdminDao.updateMember(sqlSession, vo);
	}
	
	
	
	

}
