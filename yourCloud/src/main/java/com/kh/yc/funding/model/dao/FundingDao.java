package com.kh.yc.funding.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;

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

	

	
	
}
