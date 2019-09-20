package com.kh.yc.project.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;

@Repository
public class ProjectDaoImpl implements ProjectDao{

	@Override
	public int getListCount(SqlSessionTemplate sqlSession) throws ProjectSelectListException{
		
		int result = 0;
		result = sqlSession.selectOne("Project2.selectListCount");
		
		return result;
	}

	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Project> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi) throws ProjectSelectListException {

		ArrayList<Project> list =null;
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList) sqlSession.selectList("Project2.selectProjectList",null,rowBounds);
		
		return list;
	}
	
	@Override
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Project> selectBoardList2(SqlSessionTemplate sqlSession, PageInfo pi,Member m) throws ProjectSelectListException {

		ArrayList<Project> list =null;
		
		int offset = (pi.getCurrentPage()-1)*pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList) sqlSession.selectList("Project2.selectProjectList2",rowBounds);
		
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList(SqlSessionTemplate sqlSession, int projectNo) {

		ArrayList<Project> list =null;
	
		list = (ArrayList) sqlSession.selectList("Project2.selectSupportList",projectNo);
		
		return list;
	}

	//게시판 상세보기
	@SuppressWarnings("unchecked")
	@Override
	public Project detailProject(SqlSessionTemplate sqlSession, int projectNo) {

		return sqlSession.selectOne("Project2.detailProject",projectNo);
	}

	@Override
	public ArrayList<Project> memberCategory(SqlSessionTemplate sqlSession, String category) {
		
		return (ArrayList)sqlSession.selectList("Project2.memberCategory", category);
	}

	@Override
	public ArrayList<Project> selectSupportList2(SqlSessionTemplate sqlSession, SupportList sl) {
		ArrayList<Project> list =null;
		System.out.println("SL:::::::::"+sl);
		if(sl.getStatus().equals("before")) {
		list = (ArrayList) sqlSession.selectList("Project2.orderList1",sl);
		}
		if(sl.getStatus().equals("complete")){
			list = (ArrayList) sqlSession.selectList("Project2.orderList2",sl);
		}if(sl.getStatus().equals("all")) {
			
			list = (ArrayList) sqlSession.selectList("Project2.selectSupportList",sl);
			
		}
		
		
		
		return list;
	}

	
	@Override
	public ArrayList<Project> selectSupportList3(SqlSessionTemplate sqlSession, SupportList sl) {
		ArrayList<Project> list =null;
		System.out.println("SL:::::::::"+sl);
		if(sl.getStatus().equals("before")) {
		list = (ArrayList) sqlSession.selectList("Project2.orderList3",sl);
		}
		if(sl.getStatus().equals("complete")){
			list = (ArrayList) sqlSession.selectList("Project2.orderList4",sl);
		}if(sl.getStatus().equals("all")) {
			
			list = (ArrayList) sqlSession.selectList("Project2.selectSupportList",sl);
			
		}
		
		
		
		return list;
	}

	@Override
	public ArrayList<Project> receipt(SqlSessionTemplate sqlSession, int bNum) {
		ArrayList<Project> list =null;
		
		list = (ArrayList) sqlSession.selectList("Project2.receipt",bNum);
		
		return list;
	}

	@Override
	public ArrayList<Integer> receipt2(SqlSessionTemplate sqlSession, int bNum) {
		ArrayList<Integer> count =null;
		
		count = (ArrayList) sqlSession.selectList("Project2.receipt2",bNum);
		
		return count;
	}
	
	//좋아요 기능
	@Override
	public int insertLike(SqlSessionTemplate sqlSession,Interest inter) {
		
		return sqlSession.insert("Project2.insertLike",inter);
	}

	//좋아요 취소 기능
	@Override
	public int deleteLike(SqlSessionTemplate sqlSession, Interest inter) {
		
		return sqlSession.delete("Project2.deleteLike",inter);
	}

	//좋아요 유무 
	@Override
	public int likeCount(SqlSessionTemplate sqlSession, Interest inter) {
		
		return sqlSession.selectOne("Project2.likeCount",inter);
	}



	@Override
	public ArrayList<SupportList> selectSupportListExcel(SqlSessionTemplate sqlSession, int bNum) {
		ArrayList<SupportList> list =null;
		
		list = (ArrayList) sqlSession.selectList("Project2.selectSupportListExcel",bNum);
		
		return list;
	}

	@Override
	public void updateDB(SqlSessionTemplate sqlSession,Map<String, Object> map) {
	
	 sqlSession.update("Project2.updateDb",map);
	 
	 
	}

	@Override
	public List<SupportList> testDbList(SqlSessionTemplate sqlSession,Map<String, Object> map) {
	ArrayList<SupportList> list =null;
		
		list = (ArrayList) sqlSession.selectList("Project2.selectSupportListExcel",map);
		
		return list;
	}

}

