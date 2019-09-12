package com.kh.yc.funding.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.member.model.vo.Member;

public interface FundingDao {
	//프로젝트 번호 check
	int pNoCheck(SqlSessionTemplate sqlSession, String ranNum);

	//프로젝트 번호 인설트
	int insertProjectNum(SqlSessionTemplate sqlSession, Project pro);
	
	// 첫 카테고리 업데이트
	int updatefcategory(SqlSessionTemplate sqlSession, String category);

	

	
	
}
