package com.kh.yc.project.model.vo;

import java.sql.Date;

public class SupportList implements java.io.Serializable {
	private String projectTitle;
	private int fundMoney;
	private String rewardName;
	private String fundDate;
	private String memberName;
	private String deliverySite;
	private String phone;
	private String startDate;
	private String payState;
	private String invoiceNum;
	private int projectNo;
	private int rewardNumber;
	private String status;
	private int rewardMoney;
	private int rewardCount;
	private int fundNo;
	
	
	
	public SupportList() {}
	public SupportList(String projectTitle, int fundMoney, String rewardName, String fundDate, String memberName,
			String deliverySite, String phone, String startDate, String payState, String invoiceNum, int projectNo,
			int rewardNumber, String status, int rewardMoney, int rewardCount, int fundNo) {
		super();
		this.projectTitle = projectTitle;
		this.fundMoney = fundMoney;
		this.rewardName = rewardName;
		this.fundDate = fundDate;
		this.memberName = memberName;
		this.deliverySite = deliverySite;
		this.phone = phone;
		this.startDate = startDate;
		this.payState = payState;
		this.invoiceNum = invoiceNum;
		this.projectNo = projectNo;
		this.rewardNumber = rewardNumber;
		this.status = status;
		this.rewardMoney = rewardMoney;
		this.rewardCount = rewardCount;
		this.fundNo = fundNo;
	}
	public String getProjectTitle() {
		return projectTitle;
	}
	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}
	public int getFundMoney() {
		return fundMoney;
	}
	public void setFundMoney(int fundMoney) {
		this.fundMoney = fundMoney;
	}
	public String getRewardName() {
		return rewardName;
	}
	public void setRewardName(String rewardName) {
		this.rewardName = rewardName;
	}
	public String getFundDate() {
		return fundDate;
	}
	public void setFundDate(String fundDate) {
		this.fundDate = fundDate;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getDeliverySite() {
		return deliverySite;
	}
	public void setDeliverySite(String deliverySite) {
		this.deliverySite = deliverySite;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getPayState() {
		return payState;
	}
	public void setPayState(String payState) {
		this.payState = payState;
	}
	public String getInvoiceNum() {
		return invoiceNum;
	}
	public void setInvoiceNum(String invoiceNum) {
		this.invoiceNum = invoiceNum;
	}
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public int getRewardNumber() {
		return rewardNumber;
	}
	public void setRewardNumber(int rewardNumber) {
		this.rewardNumber = rewardNumber;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getRewardMoney() {
		return rewardMoney;
	}
	public void setRewardMoney(int rewardMoney) {
		this.rewardMoney = rewardMoney;
	}
	public int getRewardCount() {
		return rewardCount;
	}
	public void setRewardCount(int rewardCount) {
		this.rewardCount = rewardCount;
	}
	public int getFundNo() {
		return fundNo;
	}
	public void setFundNo(int fundNo) {
		this.fundNo = fundNo;
	}
	@Override
	public String toString() {
		return "SupportList [projectTitle=" + projectTitle + ", fundMoney=" + fundMoney + ", rewardName=" + rewardName
				+ ", fundDate=" + fundDate + ", memberName=" + memberName + ", deliverySite=" + deliverySite
				+ ", phone=" + phone + ", startDate=" + startDate + ", payState=" + payState + ", invoiceNum="
				+ invoiceNum + ", projectNo=" + projectNo + ", rewardNumber=" + rewardNumber + ", status=" + status
				+ ", rewardMoney=" + rewardMoney + ", rewardCount=" + rewardCount + ", fundNo=" + fundNo + "]";
	}







































	
	

}
