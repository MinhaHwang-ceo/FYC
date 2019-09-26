package com.kh.yc.project.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class OpenAlarm implements Serializable{
	private int memberNo;
	private String memberPhone;
	private Date projectOpen;
	private int projectNo;
	
	
	public OpenAlarm() {}

	public OpenAlarm(int memberNo, String memberPhone, Date projectOpen, int projectNo) {
		super();
		this.memberNo = memberNo;
		this.memberPhone = memberPhone;
		this.projectOpen = projectOpen;
		this.projectNo = projectNo;
	}
	
	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public Date getProjectOpen() {
		return projectOpen;
	}

	public void setProjectOpen(Date projectOpen) {
		this.projectOpen = projectOpen;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	@Override
	public String toString() {
		return "OpenAlarm [memberNo=" + memberNo + ", memberPhone=" + memberPhone + ", projectOpen=" + projectOpen
				+ ", projectNo=" + projectNo + "]";
	}
	
	
}
