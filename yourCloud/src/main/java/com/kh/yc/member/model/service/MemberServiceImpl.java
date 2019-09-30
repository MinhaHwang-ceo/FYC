package com.kh.yc.member.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.security.auth.login.LoginException;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.dao.MemberDao;
import com.kh.yc.member.model.dao.MemberDaoImpl;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.member.model.vo.Message;
import com.kh.yc.member.model.vo.NaverMember;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDaoImpl memberDao;

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	@Autowired
	private JavaMailSender mailSender;

	/*
	 * @Autowired private JavaMailSender javaMailSender;
	 */
	/*
	 * @Autowired private JavaMailSender mailSender;
	 */
	@Override
	public Member loginMember(Member m) throws LoginException {

		Member loginUser = null;
 
		String encPassword = md.selectEncPassword(sqlSession, m);

		if (!passwordEncoder.matches(m.getUserPwd(), encPassword)) {
			throw new LoginException("로그인 실패!");
		} else { 
			loginUser = md.selectMember(sqlSession, m);
		}

		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		int insertMember = md.insertMember(sqlSession, m);
		return insertMember;
	}


	public int CheckDuplication(String inputId) {

		int idCnt = md.CheckDuplication(sqlSession, inputId);
		return idCnt;
	}

	public String findId(String email) {
	
		String userId=md.findId(sqlSession,email);
		
		return userId;
	}


//	@Override
//	public int naverInsert(NaverMember nm) {
//		return md.naverInsert(sqlSession, nm);
//	}
	//로그인 체크
//	@Override
//	public NaverMember naverloginCheck(NaverMember nm) {
//		
//		return md.naverloginCheck(sqlSession, nm);
//	}
	
	//로그인 체크

	//네이버 정보 인설트
	@Override
	public int naverInsert(Member nm) {
		System.out.println("Service : " + nm);
		return md.naverInsert(sqlSession, nm);
	}

	@Override
	public int naverLoginCheck(Member nm) {
		// TODO Auto-generated method stub
		return md.naverLoginCheck(sqlSession, nm);
	}

	 
	public void updatePwd(String email, String userPwd) {
		md.updatePwd(sqlSession, email,userPwd);

		
		}

	public List<Member> emailList() {

		List<Member> list=md.emailList(sqlSession); 
		
		return list;
	}

	@Override
	public ArrayList<Reward> selectMyReward(PageInfo pi, Member mse) {
		
		return md.selectMyReward(sqlSession, mse, pi);
	}

	@Override
	public Reward selectMyRewardDetail(int fundNoInt) {
		
		return md.selectMyRewardDetail(sqlSession, fundNoInt);
	}

	@Override
	public ArrayList<Project> interestProject(Member mse) {

		return md.interestProject(sqlSession, mse);
}
  
  @Override
	public Member selectMember(String userNo) {
		// TODO Auto-generated method stub
		return md.selectMemberInfo(sqlSession, userNo);
	}


	@Override
	public Object userCrystal(Member mse) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Message> selectMessageList(Member member) {
		
		ArrayList<Message> message = md.selectMessageList(sqlSession,member);
		
		return message;
	}

	@Override
	public int insertMessage(Message message) {
		 
		return md.insertMessage(sqlSession,message);
	}


	@Override
	public boolean checkPwd(String userId, String userPwd) {
		
		return md.checkPwd(sqlSession, userId, userPwd);
	}

	@Override
	public void updateMember(Member mse) {
		
		md.updateMember(sqlSession, mse);
	}

	@Override
	public ArrayList<Message> messageDetail(Message message) {
		 
		ArrayList<Message> mse = md.messageDetail(sqlSession,message);
		
		return mse;
	}

	@Override
	public ArrayList<Message> sendMessageList(Member member) {
		
		ArrayList<Message> message2 = md.sendMessageList(sqlSession,member);
		
		return message2;
	}

	@Override
	public int deleteReply(int replyNo) {
		
		return md.deleteReply(sqlSession,replyNo);
	}

	@Override
	public ArrayList<Project> interestProject(int userNo) {
		return md.interestProject(sqlSession, userNo);
	}

	@Override
	public ArrayList<Project> interestProject2(int userNo) {
		return md.interestProject2(sqlSession, userNo);
	}






	

}
