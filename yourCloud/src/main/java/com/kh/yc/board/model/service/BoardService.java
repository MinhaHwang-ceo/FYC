package com.kh.yc.board.model.service;

import java.util.ArrayList;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.Project;

public interface BoardService {

	int getListCount();

	ArrayList<Board> selectBoardList(PageInfo pi);

	ArrayList<Project> selectOpenProject(PageInfo pi);

}
