package com.kh.yc.member.model.service;


import java.util.ArrayList;
import java.util.List;

import javax.security.auth.login.LoginException;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.Message;
import com.kh.yc.member.model.vo.NaverMember;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;

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
	int naverInsert(Member nm);

	int naverLoginCheck(Member nm);


	public void updatePwd(String email,String userPwd); 
	
	public List<Member> emailList(); 

	ArrayList<Reward> selectMyReward(PageInfo pi, Member mse);

	Reward selectMyRewardDetail(int fundNoInt);

	ArrayList<Project> interestProject(int userNo);
 
	Member selectMember(String userNo);

	Object userCrystal(Member mse);
	//쪽지함 출력
	ArrayList<Message> selectMessageList(Member member);

	public int insertMessage(Message message);
 
	boolean checkPwd(String userId, String userPwd);

	void updateMember(Member mse);

	ArrayList<Message> messageDetail(Message message);

	ArrayList<Project> interestProject2(int userNo);


	

	

}
