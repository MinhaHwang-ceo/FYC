package com.kh.yc.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;

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

}
