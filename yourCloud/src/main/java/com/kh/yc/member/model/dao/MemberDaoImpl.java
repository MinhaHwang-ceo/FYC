package com.kh.yc.member.model.dao;

import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.member.model.vo.Member;
@Repository
public class MemberDaoImpl implements MemberDao{
	
	
	@Override
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		
		Member loginUser = sqlSession.selectOne("Member.loginCheck", m);
		
		System.out.println("Dao Member : " + loginUser);
		
		if(loginUser == null) {
			throw new LoginException("로그인 정보가 존재하지 않습니다.");
		}
		
		return loginUser;
	}
	@Override
		public int insertMember(SqlSessionTemplate sqlSession, Member m) {
			
			return sqlSession.insert("Member.insertMember", m);
		}
		
		
		@Override
		public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
			
			return sqlSession.selectOne("Member.selectPwd", m.getUserId());
		}
		
		@Override
		public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
			
			return sqlSession.selectOne("Member.selectLoginUser", m);
		}
		@Override
		public int insertBoard(SqlSessionTemplate sqlSession) {
			
			return sqlSession.insert("Member.insertBoard");
		}
		@Override
		public void GetKey(String user_id, String key) {
			// TODO Auto-generated method stub
			
		}
	
		@Override
		public int CheckDuplication(SqlSessionTemplate sqlSession,String inputId) {

			int idCount = sqlSession.selectOne("Member.countId",inputId);
			return idCount;
		}
		@Override
		public int countId(SqlSessionTemplate sqlSession, String userId) {
			// TODO Auto-generated method stub
			return 0;
		}

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

