package com.kh.yc.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yc.board.model.dao.BoardDao;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.project.model.vo.Project;


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
	public int getSearchListCount(SearchCondition sc) {
		// TODO Auto-generated method stub
		return bd.getSearchListCount(sqlSession, sc);
	}
	@Override
	public ArrayList<Board> selectSearchList(SearchCondition sc, PageInfo pi) {
		// TODO Auto-generated method stub
		return bd.selectSearchList(sqlSession, sc, pi);
	}
	@Override
	public int insertBoard(Board b) {
		return bd.insertBoard(sqlSession, b);
	}
	public ArrayList<Project> selectOpenProject(PageInfo pi) {
		return bd.selectOpenProject(sqlSession, pi);
	}
	@Override
	public Board selectBoardOne(String target) {

		
		return bd.selectBoardOne(sqlSession, target);
	}
	@Override
	public int updateViewCount(String target) {
		return bd.updateViewCount(sqlSession, target);
	}
	@Override
	public int deleteBoard(String target) {
		return bd.deleteBoard(sqlSession, target);
	}
	@Override
	public int updateBoard(Board b) {
		return bd.updateBoard(sqlSession, b);
	}
	@Override
	public int insertComment(Comment c) {
		return bd.insertComment(sqlSession, c);
	}
	@Override
	public int getCommentListCount(String target) {
		return bd.getCommentListCount(sqlSession, target);
	}
	@Override
	public ArrayList<Comment> selectComment(PageInfo pi, String target) {
		return bd.selectComment(sqlSession, pi, target);
	}
	@Override
	public int deleteComment(String target) {
		return bd.deleteComment(sqlSession, target);
	}

}
