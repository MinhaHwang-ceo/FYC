package com.kh.yc.admin.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.admin.model.vo.Report;
import com.kh.yc.member.model.vo.Member;
@Repository
public class AdminDaoImpl implements AdminDao{
	
		@Inject
		SqlSession sqlsession;
		
		//회원목록
		@Override
		public List<Member> memberList(SqlSessionTemplate sqlSession){
			return sqlSession.selectList("Member.memberList");
		}
		
		@Override
		public Member viewMember(SqlSessionTemplate sqlSession, String userNo) {
			
			return sqlSession.selectOne("Member.viewMember", userNo);
		}
		
		@Override
		public void deleteMember(String userId){
			
		}
		
		@Override
		public void updateMember(SqlSessionTemplate sqlSession,Member m) {
			
			System.out.println("userNo**********************" + m.getUserNo());
			System.out.println("userst**********************" + m.getStatus());
			
			sqlSession.selectOne("Member.updateMember", m);
			
			
		}
		
		//신고
		@Override
		public List<Report> reportList(SqlSessionTemplate sqlSession){
			return sqlSession.selectList("Report.reportList");
		}
		
		@Override
		public Report viewReport(SqlSessionTemplate sqlSession, String reportNo) {
			
			return sqlSession.selectOne("Report.viewReport", reportNo);
		}
		
		@Override
		public void updateReport(SqlSessionTemplate sqlSession, Project p) {
			
			System.out.println("**********************" + p.getProjectNo());
			System.out.println("**********************" + p.getProgressStatus());
			
			int result = sqlSession.update("Project.updateProject", p);
			System.out.println("result:::" + result);
		}
		
		//심사중프로젝트
		@Override
		public List<Project> projectList(SqlSessionTemplate sqlSession){
			return sqlSession.selectList("Project.judgeProjectList");
		}

		@Override
		public void updateProject(SqlSessionTemplate sqlSession, Project p) {
			
			sqlSession.update("Project.updateJudgeProject", p);
			
		}
		
		@Override
		public Project viewProject(SqlSessionTemplate sqlSession, String projectNo) {
			
			return sqlSession.selectOne("Project.viewProject", projectNo);
		}
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

