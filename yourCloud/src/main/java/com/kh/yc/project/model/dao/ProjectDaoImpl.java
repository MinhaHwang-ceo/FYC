package com.kh.yc.project.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Project;

@Repository
public class ProjectDaoImpl implements ProjectDao{

	@Override
	public int getListCount(SqlSessionTemplate sqlSession) throws ProjectSelectListException{
		
		int result = 0;
		result = sqlSession.selectOne("Project2.selectListCount");
		
		return result;
	}

	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Project> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi) throws ProjectSelectListException {

		ArrayList<Project> list =null;
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList) sqlSession.selectList("Project2.selectProjectList",null,rowBounds);
		
		return list;
	}

}
