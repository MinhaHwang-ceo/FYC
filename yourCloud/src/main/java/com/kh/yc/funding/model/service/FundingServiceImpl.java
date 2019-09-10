package com.kh.yc.funding.model.service;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.dao.FundingDao;
import com.kh.yc.funding.model.dao.FundingDaoImpl;


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
	public int projectNno(Project p) {
		int resulut = fd.projectNno(sqlSession,p);
		
		return resulut;
	}


	@Override
	public List<Project> projectListInfo(int projectNo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
