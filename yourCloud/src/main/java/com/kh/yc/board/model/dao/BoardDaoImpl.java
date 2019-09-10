package com.kh.yc.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;

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
		
		int offset = (pi.getCurrentPage() -1)*pi.getLimit();
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
		System.out.println(sc);
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		ArrayList<Board> list = (ArrayList)sqlSession.selectList("Board.selectSearchResultList", sc, rowBounds);
		
		return list;
	}

	@Override
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		
		return sqlSession.insert("Board.insertBoard", b);
	}

	
	
}
