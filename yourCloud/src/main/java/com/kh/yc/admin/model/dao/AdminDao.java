package com.kh.yc.admin.model.dao;

import java.sql.Statement;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.admin.model.vo.Report;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.reward.model.vo.Reward;

public interface AdminDao {
	

	
	
	// 회원 목록
	public List<Member> memberList(SqlSessionTemplate sqlSession);
	
	//회원 정보 상세보기
	public Member viewMember(SqlSessionTemplate sqlSession, String userNo);
	
	// 회원 삭제
	public void deleteMember(String userId);
	
	//회원 상태 수정
	public void updateMember(SqlSessionTemplate sqlSession, Member m);

	// 신고 목록
	public List<Report> reportList(SqlSessionTemplate sqlSession);
	
	//신고 정보 상세보기
	public Report viewReport(SqlSessionTemplate sqlSession, String reportNo);
	
	//신고 프로젝트 상태 수정
	public void updateReport(SqlSessionTemplate sqlSession, Project p);
	
	//프로젝트 심사중
	public List<Project> projectList(SqlSessionTemplate sqlSession);
	
	//심사 프로젝트 상태 수정
	public void updateProject(SqlSessionTemplate sqlSession, Project p);
	
	//심사 프로젝트 정보 상세보기
	public Project viewProject(SqlSessionTemplate sqlSession, String projectNo);
	
	//정산 프로젝트 리스트
	public List<Project> adjustProjectList(SqlSessionTemplate sqlSession);


	
}
