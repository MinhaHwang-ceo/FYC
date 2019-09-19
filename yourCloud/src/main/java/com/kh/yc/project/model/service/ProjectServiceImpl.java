package com.kh.yc.project.model.service;

import java.util.ArrayList;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.dao.ProjectDao;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;

@Service
public class ProjectServiceImpl implements ProjectService{
	//게시물 목록 갯수 조회용 메소드
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	ProjectDao pd;
	
	@Override
	public int getListCount() throws ProjectSelectListException {

		int listCount = pd.getListCount(sqlSession);
		
		return listCount;
	}

	@Override
	public ArrayList<Project> selectProjectList(PageInfo pi) throws ProjectSelectListException {
		
		ArrayList<Project> list = pd.selectBoardList(sqlSession, pi); 
		
		return list;
	}
	@Override
	public ArrayList<Project> selectProjectList2(PageInfo pi,Member m) throws ProjectSelectListException {
		
		ArrayList<Project> list = pd.selectBoardList2(sqlSession, pi,m); 
		
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList(int projectNo) {
		ArrayList<Project> list = pd.selectSupportList(sqlSession,projectNo); 
		return list;
	}

	//게시판 상세보기 메소드
	@Override
	public Project detailProject(int projectNo) {

		String projectNo1 = Integer.toString(projectNo);
		
		return pd.detailProject(sqlSession, (Integer.parseInt(projectNo1)));
	}

	@Override
	public ArrayList<Project> memberCategory(String category) {
		// TODO Auto-generated method stub
		return pd.memberCategory(sqlSession, category);
	}

	@Override
	public ArrayList<Project> selectSupportList2(SupportList sl) {
		ArrayList<Project> list = pd.selectSupportList2(sqlSession,sl); 
		return list;
	}

	@Override
	public ArrayList<Project> selectSupportList3(SupportList sl) {
		ArrayList<Project> list = pd.selectSupportList3(sqlSession,sl); 
		return list;
	}

	
	//프로젝트 리워드 종류 출력 메소드
	@Override
	public ArrayList<Project> receipt(int bNum) {
		ArrayList<Project> list = pd.receipt(sqlSession,bNum); 
		return list;
	}

	@Override
	public ArrayList<Integer> receipt2(int bNum) {
		ArrayList<Integer> count = pd.receipt2(sqlSession,bNum); 
		return count;
	}


	//좋아요 기능
	@Override
	public int insertLike(Interest inter) {
		
		return pd.insertLike(sqlSession, inter);
	}

	@Override
	public int deleteLike(Interest inter) {
		
		return pd.deleteLike(sqlSession,inter);
	}

	//좋아요 유무
	@Override
	public int likeCount(Interest inter) {
		
		return pd.likeCount(sqlSession, inter);

	@Override
	public ArrayList<SupportList> selectSupportListExcel(int bNum) {
		ArrayList<SupportList> list = pd.selectSupportListExcel(sqlSession,bNum); 
		return list;

	}

	

}
