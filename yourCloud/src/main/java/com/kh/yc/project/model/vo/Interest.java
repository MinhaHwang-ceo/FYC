package com.kh.yc.project.model.vo;

public class Interest implements java.io.Serializable{
	
	private int projectNo;
	private int userNo;
	
	public Interest() {}

	public Interest(int projectNo, int userNo) {
		super();
		this.projectNo = projectNo;
		this.userNo = userNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "Interest [projectNo=" + projectNo + ", userNo=" + userNo + "]";
	}

	
	 

}
