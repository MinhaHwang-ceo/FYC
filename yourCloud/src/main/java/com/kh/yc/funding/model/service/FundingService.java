package com.kh.yc.funding.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kh.yc.admin.model.vo.Project;

@Service
public interface FundingService{

	static void insertProject(Project p) {
		
	}
	
	//프로 젝트 번호 인설트
	int projectNno(Project p);

	List<Project> projectListInfo(int projectNo);
	
}
