package com.kh.yc.project.model.vo;

import java.io.Serializable;

public class Sign implements Serializable {

	private int userNo;
	private int bNo;

	public Sign() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sign(int userNo, int bNo) {
		this.userNo = userNo;
		this.bNo = bNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	@Override
	public String toString() {
		return "Sign [userNo=" + userNo + ", bNo=" + bNo + "]";
	}

}
