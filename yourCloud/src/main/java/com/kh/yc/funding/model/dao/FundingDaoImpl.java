package com.kh.yc.funding.model.dao;




import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.admin.model.vo.Project;

@Repository
public  class FundingDaoImpl implements FundingDao{

	@Override
	public int projectNno(SqlSessionTemplate sqlSession, Project p) {
		System.out.println("DAO : " + p);
		return sqlSession.insert("Project.insertProjectNno",p);
	}
	
	
}
