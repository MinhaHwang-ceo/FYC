package com.kh.yc.board.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.funding.model.vo.Attachment;

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

	int boardInsert(Board b);

	int boardContentInsert(Board b);

	int fileInsert(Attachment fileVO);

	List<Board> selectAllBoardList(PageInfo pi);

	List<Attachment> selectAllfileList(Attachment at);

	int PageListCount();

	ArrayList<Project> selectRankList();

	Board selectNoticeOne(String bNo);

	int deleteBoardNotice(Board b);

	void guideInsert(Board b);

	ArrayList<Board> selectGuideList();

	void guideInsert2(Board b);

	Board guideOne(int bNo);

	void deleteGuide(int bNo);

	void updateGuide1(Board b);

	void updateGuide2(Board b);

	int fileupdate(Attachment fileVO);

	int countfile(int bNo);

	List<Board> noticeListNo(String bNo1);

	List<Attachment> noticeListNoAt(String bNo1);

	int fileUpdate(Attachment fileVO);

	int noticeUpdateComplate(Board b);

	int noticeUpdateComplateContent(Board b);






}
