package com.kh.yc.funding.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.vo.Sign;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.reward.model.vo.RewardInfo;

public interface FundingDao {
	//프로젝트 번호 check
	int pNoCheck(SqlSessionTemplate sqlSession, String ranNum);

	//프로젝트 번호 인설트
	int insertProjectNum(SqlSessionTemplate sqlSession, Project pro);

	// 첫 카테고리 업데이트
	int updatefcategory(SqlSessionTemplate sqlSession,Project p);
	
	//업데이트 기본정보
	int UpdateInfo(SqlSessionTemplate sqlSession, Project p);
	
	//첨부 파일 세이브
	int insertFile(SqlSessionTemplate sqlSession, Attachment fileVO);

	List<Project> selectbasicInfo(SqlSessionTemplate sqlSession);

	String selectFile(SqlSessionTemplate sqlSession, Project p);

	int updateFile(SqlSessionTemplate sqlSession, Attachment fileVO);

	int selectFileList(SqlSessionTemplate sqlSession, Project p);

	int signUser(SqlSessionTemplate sqlSession, Sign s);

	int signFile(SqlSessionTemplate sqlSession, Attachment a);
	//리워드 인설트
	int rewardInest(SqlSessionTemplate sqlSession, Reward r);
	//리워드 리스트
	List<Reward> rewardSelect(SqlSessionTemplate sqlSession, Reward r);
	//리워드 업데이트
	int rewardUpdate(SqlSessionTemplate sqlSession, Reward r);

	void updateProject6(SqlSessionTemplate sqlSession, Project p);

	void insertRewardInfo(SqlSessionTemplate sqlSession, RewardInfo ri);

	int selectProfileImg(SqlSessionTemplate sqlSession, Project p);

	Attachment selectFileNo(SqlSessionTemplate sqlSession, Project p);

	int insertProfileImg(SqlSessionTemplate sqlSession, Attachment attach);

	Attachment selectAttach(SqlSessionTemplate sqlSession, Project p);

	int updateAdjust(SqlSessionTemplate sqlSession, Member m);

	int openProject(SqlSessionTemplate sqlSession, Project p);
	//리워드 삭제
	int deleteReward(SqlSessionTemplate sqlSession, Reward r);
	//기본정보 조회
	List<Project> baseInfoList(SqlSessionTemplate sqlSession, Project p);
	//기본정보 사진 조회
	List<Attachment> baseInfoListAt(SqlSessionTemplate sqlSession, Attachment a);
	//리워드 조회
	List<Reward> rewardList(SqlSessionTemplate sqlSession, Reward r);

	List<Reward> selectRewardAll(SqlSessionTemplate sqlSession, Reward r);




	

	
	
}
