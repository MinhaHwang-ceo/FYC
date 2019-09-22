package com.kh.yc.admin.model.service;

import java.util.List;
import java.util.Map;

import com.kh.yc.admin.model.vo.Project;
import com.kh.yc.admin.model.vo.Report;
import com.kh.yc.member.model.vo.Member;
import com.kh.yc.reward.model.vo.Reward;

public interface AdminService {
	
	//회원
	public List<Member> memberList();
	
	public Member viewMember(String userNo);
	
	public void  deleteMember(String userId);
	
	public void updateMember(Member m);

	
	//신고
	public List<Report> reportList();

	public Report viewReport(String reportNo);
	
	public void updateReport(Project p);

	
	//심사프로젝트
	public List<Project> projectList();

	public void updateProject(Project p);

	public Project viewProject(String projectNo);
	
	
	//정산프로젝트
	public List<Project> adjustProjectList();
	
	//엑셀
	int downExcel(String projectNo);

	public void updateReward(Map map);

	public void adjustUpdate(Project p);

}
