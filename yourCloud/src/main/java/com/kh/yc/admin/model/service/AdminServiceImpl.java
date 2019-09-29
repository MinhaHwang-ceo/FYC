package com.kh.yc.admin.model.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.yc.admin.model.dao.AdminDao;
import com.kh.yc.admin.model.dao.AdminDaoImpl;
import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.admin.model.vo.Report;
import com.kh.yc.member.model.dao.MemberDao;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.reward.model.vo.Reward;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDaoImpl AdminDao;

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao ad;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	
	
	//회원
	@Override
	public List<Member> memberList() {
		return ad.memberList(sqlSession);
	}

	@Override
	public Member viewMember(String userNo) {
		return AdminDao.viewMember(sqlSession, userNo);
	}

	@Override
	public void deleteMember(String userId) {
		
	}

	@Override
	public void updateMember(Member m) {
		
		AdminDao.updateMember(sqlSession, m);
	}
	
	//신고
	@Override                               
	public List<Report> reportList() {      
    	return ad.reportList(sqlSession);   
	}
	
	@Override
	public Report viewReport(String reportNo) {
		return AdminDao.viewReport(sqlSession, reportNo);
	}
	
	@Override
	public void updateReport(Project p) {
		
		AdminDao.updateReport(sqlSession, p);
	}
	
	//심사프로젝트
	@Override                               
	public List<Project> projectList() {      
    	return ad.projectList(sqlSession);   
	}
	
	@Override
	public Project viewProject(String projectNo) {
		
		return AdminDao.viewProject(sqlSession, projectNo);
	}
	
	@Override
	public void updateProject(Project p) {
		
		AdminDao.updateProject(sqlSession, p);
	}
	
	
	//정산프로젝트
	@Override                               
	public List<Project> adjustProjectList() {      
	   	return ad.adjustProjectList(sqlSession);   
	}
	
	@Override
	public void adjustUpdate(Project p) {
		
		AdminDao.adjustUpdate(sqlSession, p);
	}
	
	
	//엑셀
	@Override
	public int downExcel(String projectNo) {
		int downExcel = ad.downExcel(sqlSession, projectNo);
		return downExcel;
	}
	
	@Override
	public void updateReward(List arr) {
		ad.updateReward(sqlSession, arr);
	}
	
	@Override
	public void Adjustup(Project p) {

		ad.adjustUpdate(sqlSession, p);
		
	}

}                                       
                                            