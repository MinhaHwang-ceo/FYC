package com.kh.yc.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.project.model.vo.Project;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Override
	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("Board.selectListCount");
	}

	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi) {
		ArrayList<Board> list = null;

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		list = (ArrayList) sqlSession.selectList("Board.selectBoardList", null, rowBounds);
		return list;
	}

	@Override
	public int getSearchListCount(SqlSessionTemplate sqlSession, SearchCondition sc) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Board.selectSearchResultCount", sc);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public ArrayList<Board> selectSearchList(SqlSessionTemplate sqlSession, SearchCondition sc, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		ArrayList<Board> list = (ArrayList) sqlSession.selectList("Board.selectSearchResultList", sc, rowBounds);

		return list;
	}

	@Override
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		int result = sqlSession.insert("Board.insertBoard", b);
		if (result > 0) {
			result = sqlSession.insert("Board.insertBoardContent", b);
		}
		return result;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Project> selectOpenProject(SqlSessionTemplate sqlSession, PageInfo pi) {
		ArrayList<Project> list = null;
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		list = (ArrayList) sqlSession.selectList("Board.selectOpenProject", null, rowBounds);

		return list;
	}

	@Override
	public int updateViewCount(SqlSessionTemplate sqlSession, String target) {
		return sqlSession.update("Board.updateViewCount", target);
	}

	@Override
	public Board selectBoardOne(SqlSessionTemplate sqlSession, String target) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Board.selectBoardOne", target);
	}

	@Override
	public int deleteBoard(SqlSessionTemplate sqlSession, String target) {
		return sqlSession.update("Board.deleteBoard", target);
	}

	@Override
	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		int result = sqlSession.update("Board.updateBoard", b);
		if (result > 0) {
			result = sqlSession.update("Board.updateBoardContent", b);
		}
		return result;
	}

	@Override
	public int insertComment(SqlSessionTemplate sqlSession, Comment c) {
		return sqlSession.insert("Board.insertComment", c);
	}

	@Override
	public int getCommentListCount(SqlSessionTemplate sqlSession, String target) {
		return sqlSession.selectOne("Board.selectCommentListCount", target);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public ArrayList<Comment> selectComment(SqlSessionTemplate sqlSession, PageInfo pi, String target) {
		ArrayList<Comment> list = null;
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		list = (ArrayList) sqlSession.selectList("Board.selectCommentList", target, rowBounds);
		System.out.println(target);
		System.out.println(list);
		return list;
	}

	@Override
	public int deleteComment(SqlSessionTemplate sqlSession, String target) {
		return sqlSession.update("Board.deleteComment", target);
	}




}
