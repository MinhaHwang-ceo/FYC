package com.kh.yc.admin.model.vo;

import java.sql.Date;

public class Report implements java.io.Serializable {
	private String reportComment;
	private Date reportDate;
	private int reportNo;
	private int userNo;
	private int projectNo;
	private int reportCode;
	private String reportDetail;
	private String projectShortTitle;
	private String userName;
	private String progressStatus;
	private int reportCount;
	
	public Report() {}

	public Report(String reportComment, Date reportDate, int reportNo, int userNo, int projectNo, int reportCode,
			String reportDetail, String projectShortTitle, String userName, String progressStatus, int reportCount) {
		super();
		this.reportComment = reportComment;
		this.reportDate = reportDate;
		this.reportNo = reportNo;
		this.userNo = userNo;
		this.projectNo = projectNo;
		this.reportCode = reportCode;
		this.reportDetail = reportDetail;
		this.projectShortTitle = projectShortTitle;
		this.userName = userName;
		this.progressStatus = progressStatus;
		this.reportCount = reportCount;
	}

	public String getReportComment() {
		return reportComment;
	}

	public void setReportComment(String reportComment) {
		this.reportComment = reportComment;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
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

	public String getReportDetail() {
		return reportDetail;
	}

	public void setReportDetail(String reportDetail) {
		this.reportDetail = reportDetail;
	}

	public String getProjectShortTitle() {
		return projectShortTitle;
	}

	public void setProjectShortTitle(String projectShortTitle) {
		this.projectShortTitle = projectShortTitle;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getProgressStatus() {
		return progressStatus;
	}

	public void setProgressStatus(String progressStatus) {
		this.progressStatus = progressStatus;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	@Override
	public String toString() {
		return "Report [reportComment=" + reportComment + ", reportDate=" + reportDate + ", reportNo=" + reportNo
				+ ", userNo=" + userNo + ", projectNo=" + projectNo + ", reportCode=" + reportCode + ", reportDetail="
				+ reportDetail + ", projectShortTitle=" + projectShortTitle + ", userName=" + userName
				+ ", progressStatus=" + progressStatus + ", reportCount=" + reportCount + "]";
	}
	
	

	

	
	
	
}
