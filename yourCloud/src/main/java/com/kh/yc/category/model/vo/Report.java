package com.kh.yc.category.model.vo;

import java.io.Serializable;

public class Report implements Serializable{
	
	private String reportComment;
	private String reportDate;
	private int reportNo;
	private int userNo;
	private int projectNo;
	private int reportCode;
	
	public Report() {}

	public Report(String reportComment, String reportDate, int reportNo, int userNo, int projectNo, int reportCode) {
		super();
		this.reportComment = reportComment;
		this.reportDate = reportDate;
		this.reportNo = reportNo;
		this.userNo = userNo;
		this.projectNo = projectNo;
		this.reportCode = reportCode;
	}

	public String getReportComment() {
		return reportComment;
	}

	public void setReportComment(String reportComment) {
		this.reportComment = reportComment;
	}

	public String getReportDate() {
		return reportDate;
	}

	public void setReportDate(String reportDate) {
		this.reportDate = reportDate;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public int getReportCode() {
		return reportCode;
	}

	public void setReportCode(int reportCode) {
		this.reportCode = reportCode;
	}

	@Override
	public String toString() {
		return "Report [reportComment=" + reportComment + ", reportDate=" + reportDate + ", reportNo=" + reportNo
				+ ", userNo=" + userNo + ", projectNo=" + projectNo + ", reportCode=" + reportCode + "]";
	}

	

}
