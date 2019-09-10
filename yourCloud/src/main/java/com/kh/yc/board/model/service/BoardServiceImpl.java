package com.kh.yc.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yc.board.model.dao.BoardDao;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.Project;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	BoardDao bd;
	@Override
	public int getListCount() {
		return bd.getListCount(sqlSession);
	}
	@Override
	public ArrayList<Board> selectBoardList(PageInfo pi) {
		return bd.selectBoardList(sqlSession, pi);
	}
	@Override
	public ArrayList<Project> selectOpenProject(PageInfo pi) {
		return bd.selectOpenProject(sqlSession, pi);
	}

}
