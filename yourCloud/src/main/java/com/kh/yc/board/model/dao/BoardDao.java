package com.kh.yc.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;

public interface BoardDao {

	int getListCount(SqlSessionTemplate sqlSession);

	ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi);

}
