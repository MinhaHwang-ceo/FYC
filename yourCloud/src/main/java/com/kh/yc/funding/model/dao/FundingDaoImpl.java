package com.kh.yc.funding.model.dao;




import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.vo.Sign;

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
	public int updatefcategory(SqlSessionTemplate sqlSession, Project p) {
		
		return sqlSession.update("Project.fcategoryUpdate",p);
	}
	//업데이트 기본정보
	@Override
	public int UpdateInfo(SqlSessionTemplate sqlSession, Project p) {
		
		return sqlSession.update("Project.basicInfo",p);
	}
	@Override
	public int signUser(SqlSessionTemplate sqlSession, Sign s) {
		// TODO Auto-generated method stub
		return sqlSession.update("Project2.signUser", s);
	}
	@Override
	public int signFile(SqlSessionTemplate sqlSession, Attachment a) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Project2.signFile", a);
	}

	
	
}
