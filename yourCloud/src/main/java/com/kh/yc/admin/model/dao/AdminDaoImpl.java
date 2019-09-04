package com.kh.yc.admin.model.dao;

import java.util.List;

import javax.inject.Inject;
import javax.security.auth.login.LoginException;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.member.model.vo.Member;
@Repository
public class AdminDaoImpl implements AdminDao{
	
		@Inject
		SqlSession sqlsession;
		
		//회원목록
		@Override
		public List<Member> memberList(SqlSessionTemplate sqlSession){
			return sqlSession.selectList("Member.memberList");
		}
		
		@Override
		public Member viewMember(SqlSessionTemplate sqlSession, String userNo) {
			
			return sqlSession.selectOne("Member.viewMember", userNo);
		}
		
		@Override
		public void deleteMember(String userId){
			
		}
		
		@Override
		public void updateMember(SqlSessionTemplate sqlSession,Member vo) {
			System.out.println("memberVo 2: " + vo);
			sqlSession.update("Member.updateMember", vo);
			
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

