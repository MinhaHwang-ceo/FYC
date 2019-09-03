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
	

		
		
		//회원목록
		@Override
		public List<Member> memberList(SqlSessionTemplate sqlSession){
			return sqlSession.selectList("Member.memberList");
		}
		
		@Override
		public Member viewMember() {
			
			return null;
		}
		
		@Override
		public void deleteMember(String userId){
			
		}
		
		@Override
		public void updateMember(Member vo) {
			
			
		}
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

