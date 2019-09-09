package com.kh.yc.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.ui.Model;

import com.kh.yc.member.model.vo.Member;

public interface MemberDao {
	

	Member loginMember(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	int insertMember(SqlSessionTemplate sqlSession, Member m);

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	int insertBoard(SqlSessionTemplate sqlSession);
	
	
	
	

	void GetKey(String user_id, String key);

	

	int CheckDuplication(SqlSessionTemplate sqlSession,String inputId);
	String findId(SqlSessionTemplate sqlSession,String email);

	void updatePwd(SqlSessionTemplate sqlSession, String email, String userPwd);

List<Member> emailList(SqlSessionTemplate sqlSession);
}
