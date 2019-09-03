package com.kh.yc.admin.model.service;

import java.util.List;

import javax.security.auth.login.LoginException;

import com.kh.yc.member.model.vo.Member;

public interface AdminService {
	
	
	public List<Member> memberList();
	
	public Member viewMember();
	
	public void  deleteMember(String userId);
	
	public void updateMember(Member vo);
	

}
