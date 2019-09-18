package com.kh.yc.project.model.vo;

public class Interest implements java.io.Serializable{
	
	private int projectNo;
	private int memberNo;
	
	public Interest() {}

	public Interest(int projectNo, int memberNo) {
		super();
		this.projectNo = projectNo;
		this.memberNo = memberNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "Interest [projectNo=" + projectNo + ", memberNo=" + memberNo + "]";
	}
	
	 

}
