package com.kh.yc.project.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Project;

public interface ProjectDao {
	//게시물 목록 조회용 메소드
	int getListCount(SqlSessionTemplate sqlSession) throws ProjectSelectListException;
	//페이징 처리 된 게시물 목록 조회용 메소드
	public ArrayList<Project> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi) throws ProjectSelectListException;
	//게시판 상세보기
	public Map<String, Project> detailBoard(SqlSessionTemplate sqlSession);

}
