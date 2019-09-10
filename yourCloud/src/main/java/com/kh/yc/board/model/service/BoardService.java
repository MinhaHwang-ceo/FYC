package com.kh.yc.board.model.service;

import java.util.ArrayList;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.board.model.vo.Project;

public interface BoardService {

	int getListCount();

	ArrayList<Board> selectBoardList(PageInfo pi);

	int getSearchListCount(SearchCondition sc);

	ArrayList<Board> selectSearchList(SearchCondition sc, PageInfo pi);

	int insertBoard(Board b);
  
	ArrayList<Project> selectOpenProject(PageInfo pi);

}
