package com.kh.yc.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.funding.model.vo.Attachment;

public interface BoardDao {

	int getListCount(SqlSessionTemplate sqlSession);

	ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi);

	int getSearchListCount(SqlSessionTemplate sqlSession, SearchCondition sc);

	ArrayList<Board> selectSearchList(SqlSessionTemplate sqlSession, SearchCondition sc, PageInfo pi);

	int insertBoard(SqlSessionTemplate sqlSession, Board b);
  
	ArrayList<Project> selectOpenProject(SqlSessionTemplate sqlSession, PageInfo pi);

	int updateViewCount(SqlSessionTemplate sqlSession, String target);

	Board selectBoardOne(SqlSessionTemplate sqlSession, String target);

	int deleteBoard(SqlSessionTemplate sqlSession, String target);

	int updateBoard(SqlSessionTemplate sqlSession, Board b);

	int insertComment(SqlSessionTemplate sqlSession, Comment c);

	int getCommentListCount(SqlSessionTemplate sqlSession, String target);

	ArrayList<Comment> selectComment(SqlSessionTemplate sqlSession, PageInfo pi, String target);

	int deleteComment(SqlSessionTemplate sqlSession, String target);

	int updateComment(SqlSessionTemplate sqlSession, Comment c);

	ArrayList<Comment> selectReComment(SqlSessionTemplate sqlSession, PageInfo pi, String target);

	int insertReComment(SqlSessionTemplate sqlSession, Comment c);

	ArrayList<Project> getProject(SqlSessionTemplate sqlSession);

	Project selectDetailProject(SqlSessionTemplate sqlSession, int projectNoInt);

	Project selectProject(SqlSessionTemplate sqlSession, int pNo);

	ArrayList<Reward> selectRewardList(SqlSessionTemplate sqlSession, int pNo);

	Reward selectReward(SqlSessionTemplate sqlSession, String string);

	int boardInsert(SqlSessionTemplate sqlSession, Board b);

	int boardContentInsert(SqlSessionTemplate sqlSession, Board b);

	int fileInsert(SqlSessionTemplate sqlSession, Attachment fileVO);

	List<Board> selectAllBoardList(SqlSessionTemplate sqlSession, PageInfo pi);

	List<Attachment> selectAllfileList(SqlSessionTemplate sqlSession, Attachment at);

	int PageListCount(SqlSessionTemplate sqlSession);

	ArrayList<Project> selectRankList(SqlSessionTemplate sqlSession);

	Board selectNoticeOne(SqlSessionTemplate sqlSession, String bNo);

	int deleteBoardNotice(SqlSessionTemplate sqlSession, Board b);

	



	






}
