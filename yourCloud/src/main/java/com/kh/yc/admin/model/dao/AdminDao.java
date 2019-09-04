package com.kh.yc.admin.model.dao;

import java.util.List;

import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.member.model.vo.Member;

public interface AdminDao {
	

	
	
	// 회원 목록
	public List<Member> memberList(SqlSessionTemplate sqlSession);
	
	//회원 정보 상세보기
	public Member viewMember(SqlSessionTemplate sqlSession, String userNo);
	
	// 회원 삭제
	public void deleteMember(String userId);
	
	//회원 정보 수정
	public void updateMember(SqlSessionTemplate sqlSession,Member vo );

	
	


}
