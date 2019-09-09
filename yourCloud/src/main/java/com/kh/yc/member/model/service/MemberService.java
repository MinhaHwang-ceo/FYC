package com.kh.yc.member.model.service;


import java.util.ArrayList;
import java.util.List;

import javax.security.auth.login.LoginException;

import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.NaverMember;

public interface MemberService {
	
	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);
	
	public int CheckDuplication(String inputId);

	public String findId(String email);

	//네이버 
	//int naverInsert(NaverMember nm);
	
//	//로그인 체크
//	NaverMember naverloginCheck(NaverMember nm);

	//네이버 로그인
	int naverInsert(NaverMember nm);

	int naverLoginCheck(NaverMember nm);


	public void updatePwd(String email,String userPwd);
	
	public List<Member> emailList();

}
