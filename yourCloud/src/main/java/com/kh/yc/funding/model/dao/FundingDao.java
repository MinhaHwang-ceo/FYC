package com.kh.yc.funding.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.admin.model.vo.Project;

public interface FundingDao {
	//프로젝트 번호 인설트
	int projectNno(SqlSessionTemplate sqlSession, Project p);
	

	
	
}
