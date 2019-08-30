package com.kh.yc.member.model.service;

import javax.security.auth.login.LoginException;

import com.kh.yc.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m) throws LoginException;

	int insertMember(Member m);

}
