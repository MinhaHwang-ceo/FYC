package com.kh.yc.funding.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.vo.Sign;

public interface FundingDao {
	//프로젝트 번호 check
	int pNoCheck(SqlSessionTemplate sqlSession, String ranNum);

	//프로젝트 번호 인설트
	int insertProjectNum(SqlSessionTemplate sqlSession, Project pro);

	// 첫 카테고리 업데이트
	int updatefcategory(SqlSessionTemplate sqlSession,Project p);
	
	//업데이트 기본정보
	int UpdateInfo(SqlSessionTemplate sqlSession, Project p);

	int signUser(SqlSessionTemplate sqlSession, Sign s);

	int signFile(SqlSessionTemplate sqlSession, Attachment a);

	

	
	
}
