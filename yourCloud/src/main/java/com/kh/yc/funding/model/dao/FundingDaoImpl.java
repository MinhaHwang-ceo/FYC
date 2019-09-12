package com.kh.yc.funding.model.dao;




import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.member.model.vo.Member;

@Repository
public  class FundingDaoImpl implements FundingDao{
	//프로젝트 번호 check
	@Override
	public int pNoCheck(SqlSessionTemplate sqlSession, String ranNum) {
		
		return sqlSession.selectOne("Project.checkPNo",ranNum);
	}
	//프로젝트 번호 인설트
	@Override
	public int insertProjectNum(SqlSessionTemplate sqlSession, Project pro) {
		
		return sqlSession.insert("Project.insertProjectNno",pro);
	}
	
	//첫 카테코리 업데이트
	@Override
	public int updatefcategory(SqlSessionTemplate sqlSession, String category) {
		
		return sqlSession.update("Project.fcategoryUpdate",category);
	}

	
	
}
