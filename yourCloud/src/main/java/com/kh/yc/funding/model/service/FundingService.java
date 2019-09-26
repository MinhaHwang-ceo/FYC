package com.kh.yc.funding.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.vo.Sign;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.reward.model.vo.RewardInfo;

@Service
public interface FundingService{

	static void insertProject(Project p) {
		
	}
	
	//프로 젝트 번호 인설트
	int insertProjectNum(Project pro);
	//프로젝트 번호 체크
	int pNoCheck(String ranNum);
	
	///업데이트 첫 카테코리
	int updateCategory(Project p);
	
	//펀딩오븐 기본 정보 저장하기
	int UpdateInfo(Project p);
	
	//파일인설트
	int insertFile(Attachment fileVO);
	
	//기본정보 입력
	List<Project>selectbasicInfo();

	String selectFile(Project p);

	int updateFile(Attachment fileVO);

	int selectFileList(Project p);

	int signUser(Sign s);

	int signFile(Attachment a);
	
	//리워드 인설트
	int rewardInest(Reward r);

	void updateProject(Project p);

	void insertRewardInfo(RewardInfo ri);

	int selectProfileImg(Project p);

	Attachment selectFileNo(Project p);

	int insertProfileImg(Attachment attach);

	Attachment selectAttach(Project p);

	int updateAdjust(Member m);

	int openProject(Project p);

	//리워드 셀렉트
	List<Reward> rewardSelect(Reward r);
	
	//리워드 업데이트
	int rewardUpdate(Reward r);
	//리워드 삭제
	int deleteReward(Reward r);
	
	//기본정보 조회
	List<Project> baseInfoList(Project p);
	//기본정보 사진조회
	List<Attachment> baseInfoListAt(Attachment a);
	//리워드 조회
	List<Reward> rewardList(Reward r);
	
	List<Reward> selectRewardAll(Reward r);

	List<Project> selectRewardInfo(Project p);

	List<RewardInfo> selectlistInfo(RewardInfo rf);

	List<Project> selectMakerInfo(Project p);

	void updateMember(Member m);


	

	
		
	
}
