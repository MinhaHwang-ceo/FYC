package com.kh.yc.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.Board;
import com.kh.yc.board.model.vo.Comment;
import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.board.model.vo.SearchCondition;
import com.kh.yc.funding.model.vo.Attachment;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.reward.model.vo.Reward;

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

		list = (ArrayList) sqlSession.selectList("Project2.selectOpenProject", null, rowBounds);
		System.out.println(list);

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

	@Override
	public int updateComment(SqlSessionTemplate sqlSession, Comment c) {
		return sqlSession.update("Board.updateComment", c);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public ArrayList<Comment> selectReComment(SqlSessionTemplate sqlSession, PageInfo pi, String target) {
		ArrayList<Comment> list = null;
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		list = (ArrayList) sqlSession.selectList("Board.selectReComment", target, rowBounds);
		return list;
	}

	@Override
	public int insertReComment(SqlSessionTemplate sqlSession, Comment c) {
		return sqlSession.insert("Board.insertReComment", c);
	}

	@Override
	public ArrayList<Project> getProject(SqlSessionTemplate sqlSession) {
		ArrayList<Project> list = null;

		list = (ArrayList) sqlSession.selectList("Project2.getProject");

		return list;
	}

	@Override
	public Project selectDetailProject(SqlSessionTemplate sqlSession, int projectNoInt) {
		
		return sqlSession.selectOne("Project2.selectDetailProject", projectNoInt);
	}

	@Override
	public Project selectProject(SqlSessionTemplate sqlSession, int pNo) {
		return sqlSession.selectOne("Project2.selectProject", pNo);
	}

	@Override
	public ArrayList<Reward> selectRewardList(SqlSessionTemplate sqlSession, int pNo) {
		ArrayList<Reward> r = null;
		r = (ArrayList)sqlSession.selectList("Reward.selectRewardList", pNo);
		return r;
	}

	@Override
	public Reward selectReward(SqlSessionTemplate sqlSession, String string) {
		return sqlSession.selectOne("Reward.selectReward2", string);
	}

	@Override
	public int boardInsert(SqlSessionTemplate sqlSession, Board b) {
	
		return sqlSession.insert("Board.boardInsert",b);
	}

	@Override
	public int boardContentInsert(SqlSessionTemplate sqlSession, Board b) {
		
		return sqlSession.insert("Board.boardContentInsert",b);
	}

	@Override
	public int fileInsert(SqlSessionTemplate sqlSession, Attachment fileVO) {
		
		return sqlSession.insert("Attachment.fileInsert",fileVO);
	}

	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Board> selectAllBoardList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Board> BoardList = null;
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		BoardList = (List) sqlSession.selectList("Board.selectAllBoardList", null, rowBounds);
		return BoardList;
		
		
		 
	}
	@Override
	public List<Attachment> selectAllfileList(SqlSessionTemplate sqlSession, Attachment at) {
	
		return sqlSession.selectList("Attachment.selectAllfileList",at);
	}

	@Override
	public int PageListCount(SqlSessionTemplate sqlSession) {
	
		return sqlSession.selectOne("Board.selectPageListCount");

  }
  
  @Override
	public ArrayList<Project> selectRankList(SqlSessionTemplate sqlSession) {
		ArrayList<Project> list = (ArrayList)sqlSession.selectList("Project2.selectRankList");
		return list;

	}

	@Override
	public Board selectNoticeOne(SqlSessionTemplate sqlSession, String bNo) {
		
		return sqlSession.selectOne("Board.selectNoticeOne",bNo);
	}
	@Override
	public int deleteBoardNotice(SqlSessionTemplate sqlSession, Board b) {
		
		return sqlSession.update("Board.delBoardNotice",b);
	}

	@Override
	public void guideInsert(SqlSessionTemplate sqlSession, Board b) {
		sqlSession.insert("Board.guideInsert",b);
		
	}

	@Override
	public ArrayList<Board> selectGuideList(SqlSessionTemplate sqlSession) {

		ArrayList<Board> list = (ArrayList)sqlSession.selectList("Board.selectGuideList");
		return list;
		
	}

	@Override
	public void guideInsert2(SqlSessionTemplate sqlSession, Board b) {
		sqlSession.insert("Board.guideInsert2",b);
		
	}

	@Override
	public Board guideOne(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.guideOne",bNo);
	}

	@Override
	public void deleteGuide(SqlSessionTemplate sqlSession, int bNo) {
		 sqlSession.delete("Board.deleteGuide",bNo);
	}

	@Override
	public void updateGuide1(SqlSessionTemplate sqlSession, Board b) {
		 sqlSession.update("Board.updateGuide1", b);
	}

	@Override
	public void updateGuide2(SqlSessionTemplate sqlSession, Board b) {
		 sqlSession.update("Board.updateGuide2", b);
	}

	@Override
	public int fileupdate(SqlSessionTemplate sqlSession, Attachment fileVO) {
		return sqlSession.update("Attachment.fileupdate",fileVO);
	}

	@Override
	public int countfile(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.countfile", bNo);
	}

	@Override
	public List<Board> noticeListNo(SqlSessionTemplate sqlSession, String bNo1) {
		return sqlSession.selectList("Board.noticeListNo",bNo1);
	}

	@Override
	public List<Attachment> noticeListNoAt(SqlSessionTemplate sqlSession, String bNo1) {

		return sqlSession.selectList("Attachment.noticeListNoAt",bNo1);
	}

	@Override
	public int fileUpdate(SqlSessionTemplate sqlSession, Attachment fileVO) {
		return sqlSession.update("Attachment.fileUpdate",fileVO);
	}

	@Override
	public int noticeUpdateComplate(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("Board.noticeUpdateComplate",b);
	}

	@Override
	public int noticeUpdateComplateContent(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("Board.noticeUpdateComplateContent",b);
	}


	
  


}
