package com.kh.yc.board.model.service;

import java.util.ArrayList;

import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;

public interface BoardService {

	int getListCount();

	ArrayList<Board> selectBoardList(PageInfo pi);

	int getSearchListCount(SearchCondition sc);

	ArrayList<Board> selectSearchList(SearchCondition sc, PageInfo pi);

	int insertBoard(Board b);

	ArrayList<Project> selectOpenProject(PageInfo pi);

	Board selectBoardOne(String target);

	int deleteBoard(String target);

	int updateBoard(Board b);

	int insertComment(Comment c);

	int getCommentListCount(String target);

	ArrayList<Comment> selectComment(PageInfo pi, String target);

	int deleteComment(String target);

	int updateViewCount(String target);

	int updateComment(Comment c);

	ArrayList<Comment> selectReComment(PageInfo pi, String target);

	int insertReComment(Comment c);

	ArrayList<Project> getProject();

	Project selectDetailProject(int projectNoInt);

	Project selectProject(int pNo);

	ArrayList<Reward> selectRewardList(int pNo);

	Reward selectReward(String string);



}
