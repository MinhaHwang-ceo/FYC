package com.kh.yc.project.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.board.model.vo.PageInfo;
import com.kh.yc.category.model.vo.Report;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.project.model.exception.ProjectSelectListException;
import com.kh.yc.project.model.vo.Interest;
import com.kh.yc.project.model.vo.Project;
import com.kh.yc.project.model.vo.SupportList;

public interface ProjectDao {
	//게시물 목록 조회용 메소드
	int getListCount(SqlSessionTemplate sqlSession) throws ProjectSelectListException;
	//페이징 처리 된 게시물 목록 조회용 메소드
	public ArrayList<Project> selectBoardList(SqlSessionTemplate sqlSession, PageInfo pi) throws ProjectSelectListException;
	//게시판 상세보기
	public Project detailProject(SqlSessionTemplate sqlSession ,int projectNo);
	//나의메이커 조회
	public ArrayList<Project> selectBoardList2(SqlSessionTemplate sqlSession, PageInfo pi, Member m) throws ProjectSelectListException;
	//서포트 조회용
	ArrayList<Project> selectSupportList(SqlSessionTemplate sqlSession, int projectNo);

	//서포터 정렬
	ArrayList<Project> selectSupportList2(SqlSessionTemplate sqlSession, SupportList sl);
	ArrayList<Project> selectSupportList3(SqlSessionTemplate sqlSession, SupportList sl);
	//프로젝트의 리워드 종류 출력 메소드
	ArrayList<Project> receipt(SqlSessionTemplate sqlSession, int bNum);
	//리워드 수 count
	ArrayList<Integer> receipt2(SqlSessionTemplate sqlSession, int bNum);
	ArrayList<Project> memberCategory(SqlSessionTemplate sqlSession, String category);
	//좋아요 기능
	int insertLike(SqlSessionTemplate sqlSession, Interest inter);
	//좋아요 취소 기능
	int deleteLike(SqlSessionTemplate sqlSession, Interest inter);
	//좋이요 유무
	int likeCount(SqlSessionTemplate sqlSession, Interest inter);
	
	//엑셀 다운로드 메소드
	ArrayList<SupportList> selectSupportListExcel(SqlSessionTemplate sqlSession, int bNum);
	
	//신고하기 기능
	int insertReport(SqlSessionTemplate sqlSession, Report report);
	//신고여부
	int reportCount(SqlSessionTemplate sqlSession, Interest inter);

	//엑셀 데이터 삽입
void   updateDB(SqlSessionTemplate sqlSession,Map<String, Object> map);
	//엑셀 데이터 가져오기
	List<SupportList> testDbList(SqlSessionTemplate sqlSession,Map<String, Object> map);


}