package com.kh.yc.funding.model.dao;




import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.vo.Sign;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.reward.model.vo.RewardInfo;

@Repository
public  class FundingDaoImpl implements FundingDao{
	//프로젝트 번호 check
	@Override
	public int pNoCheck(SqlSessionTemplate sqlSession, String ranNum) {
		
		return sqlSession.selectOne("Project.checkPNo",ranNum);
	}
	//프로젝트 번호 인설트
	@Override
	public int insertProjectNum(SqlSessionTemplate sqlSession, Project pro) {
		

		return sqlSession.insert("Project.insertProjectNno",pro);
	}
	
	//첫 카테코리 업데이트
	@Override
	public int updatefcategory(SqlSessionTemplate sqlSession, Project p) {
		
		System.out.println("DAO : " + p);
		return sqlSession.update("Project.fcategoryUpdate",p);
	}
	//업데이트 기본정보
	@Override
	public int UpdateInfo(SqlSessionTemplate sqlSession, Project p) {
		
		return sqlSession.update("Project.basicInfo",p);
	}
	//파일 인설트
	@Override
	public int insertFile(SqlSessionTemplate sqlSession, Attachment fileVO) {
		
		System.out.println("첨부파일 님 : " + fileVO);
		return sqlSession.insert("Attachment.insertFile",fileVO);
	}
	@Override
	public List<Project>selectbasicInfo(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("Project.selectbasicInfo");
	}
	@Override
	public String selectFile(SqlSessionTemplate sqlSession, Project p) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Project.selectFile", p);
	}
	@Override
	public int updateFile(SqlSessionTemplate sqlSession, Attachment fileVO) {
		// TODO Auto-generated method stub
		return sqlSession.update("Project.updateFile", fileVO);
	}
	@Override
	public int selectFileList(SqlSessionTemplate sqlSession, Project p) {
		return sqlSession.selectOne("Project.selectFileList", p);
	}
	@Override
	public int signUser(SqlSessionTemplate sqlSession, Sign s) {
		// TODO Auto-generated method stub
		return sqlSession.update("Project2.signUser", s);
	}
	@Override
	public int signFile(SqlSessionTemplate sqlSession, Attachment a) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Project2.signFile", a);
	}
	//리워드 인설트
	@Override
	public int rewardInest(SqlSessionTemplate sqlSession, Reward r) {
		
		return sqlSession.insert("Reward.insertReward",r);
	}
	@Override
	public void updateProject6(SqlSessionTemplate sqlSession, Project p) {
		sqlSession.update("Project2.updateProject6", p);
		
	}
	@Override
	public void insertRewardInfo(SqlSessionTemplate sqlSession, RewardInfo ri) {
		sqlSession.insert("Project2.insertReward", ri);
	}
	@Override
	public int selectProfileImg(SqlSessionTemplate sqlSession, Project p) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Project2.selectProfileImg", p);
	}
	@Override
	public Attachment selectFileNo(SqlSessionTemplate sqlSession, Project p) {
		return sqlSession.selectOne("Project2.selectFileNo", p);
	}
	@Override
	public int insertProfileImg(SqlSessionTemplate sqlSession, Attachment attach) {
		return sqlSession.insert("Project2.insertProfileImg", attach);
	}
	@Override
	public Attachment selectAttach(SqlSessionTemplate sqlSession, Project p) {
		return sqlSession.selectOne("Attachment.selectAttach", p);
	}
	@Override
	public int updateAdjust(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.updateAdjust", m);
		
	}
	@Override
	public int openProject(SqlSessionTemplate sqlSession, Project p) {
		return sqlSession.update("Project2.openProject", p);
	}

  @Override
	public List<Reward> rewardSelect(SqlSessionTemplate sqlSession, Reward r) {
		
		System.out.println("DAO r :" + r);
		return sqlSession.selectList("Reward.selectReward",r);
	}
	//리워드 업데이트
	@Override
	public int rewardUpdate(SqlSessionTemplate sqlSession, Reward r) {
		
		return sqlSession.update("Reward.updateReward",r);
	}

	
	
}
