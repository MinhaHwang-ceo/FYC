package com.kh.yc.category.model.vo;

import java.io.Serializable;

public class Encore implements Serializable{
	
	private int encoreNo;
	private int projectNo;
	private int userNo;
	
	public Encore() {}

	public Encore(int encoreNo, int projectNo, int userNo) {
		super();
		this.encoreNo = encoreNo;
		this.projectNo = projectNo;
		this.userNo = userNo;
	}

	public int getEncoreNo() {
		return encoreNo;
	}

	public void setEncoreNo(int encoreNo) {
		this.encoreNo = encoreNo;
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
		return "Encore [encoreNo=" + encoreNo + ", projectNo=" + projectNo + ", userNo=" + userNo + "]";
	}
	
	
	


}
