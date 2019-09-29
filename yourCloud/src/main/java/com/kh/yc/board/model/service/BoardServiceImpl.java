package com.kh.yc.board.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;
import com.kh.yc.board.model.dao.BoardDao;
import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.funding.model.vo.Attachment;

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
	@Override
	public int updateComment(Comment c) {
		return bd.updateComment(sqlSession, c);
	}
	@Override
	public ArrayList<Comment> selectReComment(PageInfo pi, String target) {
		return bd.selectReComment(sqlSession, pi, target);
	}
	@Override
	public int insertReComment(Comment c) {
		return bd.insertReComment(sqlSession, c);
	}
	@Override
	public ArrayList<Project> getProject() {
		return bd.getProject(sqlSession);
	}
	@Override
	public Project selectDetailProject(int projectNoInt) {

		return bd.selectDetailProject(sqlSession, projectNoInt);
	}
	@Override
	public Project selectProject(int pNo) {
		return bd.selectProject(sqlSession, pNo);
	}
	@Override
	public ArrayList<Reward> selectRewardList(int pNo) {
		return bd.selectRewardList(sqlSession, pNo);
	}
	public Reward selectReward(String string) {
		return bd.selectReward(sqlSession, string);
	}
	@Override
	public int boardInsert(Board b) {
		
		return bd.boardInsert(sqlSession,b);
	}
	@Override
	public int boardContentInsert(Board b) {
		
		return bd.boardContentInsert(sqlSession,b);
	}
	@Override
	public int fileInsert(Attachment fileVO) {
		
		return bd.fileInsert(sqlSession,fileVO);
	}
	@Override
	public List<Board> selectAllBoardList(PageInfo pi) {
		
		return bd.selectAllBoardList(sqlSession,pi);
	}
	@Override
	public List<Attachment> selectAllfileList(Attachment at) {
		
		return bd.selectAllfileList(sqlSession,at);
	}
	@Override
	public int PageListCount() {
		
		return bd.PageListCount(sqlSession);
  }
	@Override
	public ArrayList<Project> selectRankList() {
		// TODO Auto-generated method stub
		return bd.selectRankList(sqlSession);
	}
	@Override
	public Board selectNoticeOne(String bNo) {
		
		return bd.selectNoticeOne(sqlSession,bNo);
	}
	@Override
	public int deleteBoardNotice(Board b) {

		return bd.deleteBoardNotice(sqlSession,b);
	}
	@Override
	public void guideInsert(Board b) {
		 bd.guideInsert(sqlSession,b);
		
	}
	@Override
	public ArrayList<Board> selectGuideList() {
		
		return bd.selectGuideList(sqlSession);
	}
	@Override
	public void guideInsert2(Board b) {
		 bd.guideInsert2(sqlSession,b);
		
	}
	@Override
	public Board guideOne(int bNo) {
		return bd.guideOne(sqlSession,bNo);
	}
	@Override
	public void deleteGuide(int bNo) {
		 bd.deleteGuide(sqlSession,bNo);		
	}
	@Override
	public void updateGuide1(Board b) {
		 bd.updateGuide1(sqlSession,b);	
		
	}
	@Override
	public void updateGuide2(Board b) {
		 bd.updateGuide2(sqlSession,b);	
		
	}
	@Override
	public int fileupdate(Attachment fileVO) {
	return 	 bd.fileupdate(sqlSession,fileVO);	
			
	}
	@Override
	public int countfile(int bNo) {
		return 	 bd.countfile(sqlSession,bNo);	
	}
	@Override
	public List<Board> noticeListNo(String bNo1) {
		return bd.noticeListNo(sqlSession,bNo1);
	}
	@Override
	public List<Attachment> noticeListNoAt(String bNo1) {
		// TODO Auto-generated method stub
		return bd.noticeListNoAt(sqlSession,bNo1);
	
	}
	@Override
	public int fileUpdate(Attachment fileVO) {
		return bd.fileUpdate(sqlSession,fileVO);
	}
	@Override
	public int noticeUpdateComplate(Board b) {
		return bd.noticeUpdateComplate(sqlSession,b);
	}
	@Override
	public int noticeUpdateComplateContent(Board b) {
		return bd.noticeUpdateComplateContent(sqlSession,b);
	}
	

}
