package com.kh.yc.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import javax.security.auth.login.LoginException;

import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.ui.Model;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.NaverMember;
import com.kh.yc.reward.model.vo.Reward;

public interface MemberDao {
	

	Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	int insertMember(SqlSessionTemplate sqlSession, Member m);

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	int insertBoard(SqlSessionTemplate sqlSession);
	
	
	
	

	void GetKey(String user_id, String key);

	

	int CheckDuplication(SqlSessionTemplate sqlSession,String inputId);
	String findId(SqlSessionTemplate sqlSession,String email);


	//네이버 
	//int naverInsert(SqlSessionTemplate sqlSession, NaverMember nm);
	
	
	//네이버 정보 인설트
	int naverInsert(SqlSessionTemplate sqlSession, Member nm);


	int naverLoginCheck(SqlSessionTemplate sqlSession, Member nm);
	
	//네이버 체크
	//NaverMember naverloginCheck(SqlSessionTemplate sqlSession, NaverMember nm);

	void updatePwd(SqlSessionTemplate sqlSession, String email, String userPwd);

List<Member> emailList(SqlSessionTemplate sqlSession);

ArrayList<Reward> selectMyReward(SqlSessionTemplate sqlSession, Member mse, PageInfo pi);

Reward selectMyRewardDetail(SqlSessionTemplate sqlSession, int rewardNoInt);





}
