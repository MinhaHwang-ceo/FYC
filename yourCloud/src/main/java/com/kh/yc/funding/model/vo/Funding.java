package com.kh.yc.funding.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Funding implements Serializable {

	private int fundNo;
	private String fundDate;
	private int userNo;
	private int projectNo;
	private int fundMoney;
	private int rewardNo;
	private int rewardCount;
	private String blind;
	private String memberName;

	public Funding() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Funding(int fundNo, String fundDate, int userNo, int projectNo, int fundMoney, int rewardNo, int rewardCount,
			String blind, String memberName) {
		super();
		this.fundNo = fundNo;
		this.fundDate = fundDate;
		this.userNo = userNo;
		this.projectNo = projectNo;
		this.fundMoney = fundMoney;
		this.rewardNo = rewardNo;
		this.rewardCount = rewardCount;
		this.blind = blind;
		this.memberName = memberName;
	}

	public int getFundNo() {
		return fundNo;
	}

	public void setFundNo(int fundNo) {
		this.fundNo = fundNo;
	}

	public String getFundDate() {
		return fundDate;
	}

	public void setFundDate(String fundDate) {
		this.fundDate = fundDate;
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

	public int getFundMoney() {
		return fundMoney;
	}

	public void setFundMoney(int fundMoney) {
		this.fundMoney = fundMoney;
	}

	public int getRewardNo() {
		return rewardNo;
	}

	public void setRewardNo(int rewardNo) {
		this.rewardNo = rewardNo;
	}

	public int getRewardCount() {
		return rewardCount;
	}

	public void setRewardCount(int rewardCount) {
		this.rewardCount = rewardCount;
	}

	public String getBlind() {
		return blind;
	}

	public void setBlind(String blind) {
		this.blind = blind;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	@Override
	public String toString() {
		return "Funding [fundNo=" + fundNo + ", fundDate=" + fundDate + ", userNo=" + userNo + ", projectNo="
				+ projectNo + ", fundMoney=" + fundMoney + ", rewardNo=" + rewardNo + ", rewardCount=" + rewardCount
				+ ", blind=" + blind + ", memberName=" + memberName + "]";
	}



}
