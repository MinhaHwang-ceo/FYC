package com.kh.yc.funding.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.dao.FundingDao;
import com.kh.yc.funding.model.dao.FundingDaoImpl;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;


@Service
public class FundingServiceImpl implements FundingService{
	
	@Inject
	FundingDaoImpl FundingDao;
	@Autowired
	private FundingDao fd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//프로젝트 번호 인설트
	@Override
	public int insertProjectNum(Project pro) {
		int resulut = fd.insertProjectNum(sqlSession,pro);
		
		return resulut;
	}
	
	//프로젝트 번호  체크
	@Override
	public int pNoCheck(String ranNum) {
		int check = fd.pNoCheck(sqlSession,ranNum);
		return check;
	}
	
	///업데이트 카테고리
	@Override
	public int updateCategory(Project p) {
		int fcategory = fd.updatefcategory(sqlSession,p);
		
		return fcategory;
	}

	//펀딩오픈 기본정보 업데이트
	@Override
	public int UpdateInfo(Project p) {
		int result = 0;
		
		int result1 = fd.UpdateInfo(sqlSession,p);
			
		if(result1 > 0) {
			result = 1;
		}
		return result;
	}
	
	//이미지 파일 업로드
	@Override
	public int insertFile(Attachment fileVO) {
		
		int filePath = fd.insertFile(sqlSession,fileVO);
		
		return filePath;
	}
	
	//기본정보
	@Override
	public List<Project> selectbasicInfo() {
		
		return fd.selectbasicInfo(sqlSession);
	}

	@Override
	public String selectFile(Project p) {
		// TODO Auto-generated method stub
		return fd.selectFile(sqlSession, p);
	}

	@Override
	public int updateFile(Attachment fileVO) {
		// TODO Auto-generated method stub
		return fd.updateFile(sqlSession, fileVO);
	}

	@Override
	public int selectFileList(Project p) {
		// TODO Auto-generated method stub
		return fd.selectFileList(sqlSession, p);
	}

	

	

	

	
	
	



	
	
}
