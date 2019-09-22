package com.kh.yc.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.security.auth.login.LoginException;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.NaverMember;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;
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
		public void updatePwd(SqlSessionTemplate sqlSession, String email, String userPwd) {
			Member m= new Member();
			m.setEmail(email);
			m.setUserPwd(userPwd);

		sqlSession.update("Member.newPwd",m);
			
			
			
			
		}
		@Override
		public List<Member> emailList(SqlSessionTemplate sqlSession) {
	
			
			List<Member> list= sqlSession.selectList("Member.emailList");
					
					return list;
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
		public int naverInsert(SqlSessionTemplate sqlSession, Member nm) {
			
			System.out.println("Dao : " + nm);
			return sqlSession.insert("Naver.naverInsert", nm);
		}
		
		//좋아요 기능
		@Override
		public int naverLoginCheck(SqlSessionTemplate sqlSession, Member nm) { 
			return sqlSession.selectOne("Naver.naverLoginCheck", nm);
		}
		@SuppressWarnings({ "unchecked", "rawtypes" })
		@Override
		public ArrayList<Reward> selectMyReward(SqlSessionTemplate sqlSession, Member mse, PageInfo pi) {
			ArrayList<Reward> list = null;
			int offset = (pi.getCurrentPage() -1) * pi.getLimit();
			
			RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
			
			list = (ArrayList) sqlSession.selectList("Reward.selectMyReward", mse, rowBounds);
			System.out.println(list);
			return list;
		} 
		@Override
		public Reward selectMyRewardDetail(SqlSessionTemplate sqlSession, int rewardNoInt) {
			
			return sqlSession.selectOne("Reward.selectMyRewardDetail", rewardNoInt);
		}
		@SuppressWarnings({ "unchecked", "rawtypes" })
		@Override
		public ArrayList<Project> interestProject(SqlSessionTemplate sqlSession, Member mse) {
			ArrayList<Project> list = null;
			
			list = (ArrayList) sqlSession.selectList("Project2.interestProject5", mse);
			
			return list;
		}

	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

