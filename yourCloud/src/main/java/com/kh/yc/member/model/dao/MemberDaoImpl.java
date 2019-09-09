package com.kh.yc.member.model.dao;

import java.util.List;

import javax.inject.Inject;
import javax.security.auth.login.LoginException;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.NaverMember;
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
		public String findId(SqlSessionTemplate sqlSession, String email) {
			String userId=sqlSession.selectOne("Member.findId",email);
		return userId;
		}
		@Override
		public int countId(SqlSessionTemplate sqlSession, String userId) {
			// TODO Auto-generated method stub
			return 0;
		}
		@Override
		public String countId(SqlSessionTemplate sqlSession, Member m) {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public int updatePwd(SqlSessionTemplate sqlSession, Member model) {
			return sqlSession.update("Member.updatePwd");
		}
		//네이버 회원 인셀트
//		@Override
//		public int naverInsert(SqlSessionTemplate sqlSession,  NaverMember nm) {
//			System.out.println("********************" + nm);
//			return sqlSession.insert("Naver.naverInsert", nm);
//		}
//		//네이버 로그인 체크
//		@Override
//		public NaverMember naverloginCheck(SqlSessionTemplate sqlSession, NaverMember nm) {
//			System.out.println("loginCheck : " + nm);
//			return sqlSession.selectOne("Naver.naverLoginCheck", nm);
//		}
		//네이버 로그인 체크

		//네이버 회원 정보 인셀트
		@Override
		public int naverInsert(SqlSessionTemplate sqlSession, NaverMember nm) {
			
			System.out.println("Dao : " + nm);
			return sqlSession.insert("Naver.naverInsert", nm);
		}
		@Override
		public int naverLoginCheck(SqlSessionTemplate sqlSession, NaverMember nm) {
			return sqlSession.selectOne("Naver.naverLoginCheck", nm);
		}
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

