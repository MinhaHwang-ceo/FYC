package com.kh.yc.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.project.model.vo.Project;

public interface BoardDao {

	int getListCount(SqlSessionTemplate sqlSession);

	ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi);

	int getSearchListCount(SqlSessionTemplate sqlSession, SearchCondition sc);

	ArrayList<Board> selectSearchList(SqlSessionTemplate sqlSession, SearchCondition sc, PageInfo pi);

	int insertBoard(SqlSessionTemplate sqlSession, Board b);
  
	ArrayList<Project> selectOpenProject(SqlSessionTemplate sqlSession, PageInfo pi);


}
