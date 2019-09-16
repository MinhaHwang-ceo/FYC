package com.kh.yc.funding.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.member.model.vo.Member;

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


	

	
}
