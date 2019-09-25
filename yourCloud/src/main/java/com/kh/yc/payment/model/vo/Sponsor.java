package com.kh.yc.payment.model.vo;

public class Sponsor {
	private int userNo;
	private int projectNo;
	private int supportMoney;
	private int open;

	public Sponsor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sponsor(int userNo, int projectNo, int supportMoney, int open) {
		this.userNo = userNo;
		this.projectNo = projectNo;
		this.supportMoney = supportMoney;
		this.open = open;
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

	public int getSupportMoney() {
		return supportMoney;
	}

	public void setSupportMoney(int supportMoney) {
		this.supportMoney = supportMoney;
	}

	public int getOpen() {
		return open;
	}

	public void setOpen(int open) {
		this.open = open;
	}

	@Override
	public String toString() {
		return "Sponsor [userNo=" + userNo + ", projectNo=" + projectNo + ", supportMoney=" + supportMoney + ", open="
				+ open + "]";
	}

}
