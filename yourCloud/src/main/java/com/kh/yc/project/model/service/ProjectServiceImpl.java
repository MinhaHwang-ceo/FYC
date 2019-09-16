package com.kh.yc.project.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.dao.ProjectDao;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Project;

@Service
public class ProjectServiceImpl implements ProjectService{

	//게시물 목록 갯수 조회용 메소드
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	ProjectDao pd;
	
	@Override
	public int getListCount() throws ProjectSelectListException {

		int listCount = pd.getListCount(sqlSession);
		
		return listCount;
	}

	@Override
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException {
		
		ArrayList<Project> list = pd.selectBoardList(sqlSession, pi); 
		
		return list;
	}
	@Override
	public ArrayList<Project> selectProjectList2(PageInfo pi,Member m) throws ProjectSelectListException {
		
		ArrayList<Project> list = pd.selectBoardList2(sqlSession, pi,m); 
		
		return list;
	}

	

	@Override
	public ArrayList<Project> selectSupportList(int projectNo) {
		ArrayList<Project> list = pd.selectSupportList(sqlSession,projectNo); 
		return list;
	}

}