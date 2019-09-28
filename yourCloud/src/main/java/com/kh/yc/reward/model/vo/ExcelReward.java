package com.kh.yc.reward.model.vo;

public class ExcelReward {
	private int projectNo;
	private String projectShortTitle;
	private String memberName;
	private String rewardMoney;
	private String rewardName;
	private String options;
	private String deliveryStatus;
	private String deliveryMoney;
	private String startDate;
	private String companyName;
	private int fundNo; 
	private int adjustNo;
	private String adjustState;
	
	public ExcelReward (){}

	public ExcelReward(int projectNo, String projectShortTitle, String memberName, String rewardMoney,
			String rewardName, String options, String deliveryStatus, String deliveryMoney, String startDate,
			String companyName, int fundNo, int adjustNo, String adjustState) {
		super();
		this.projectNo = projectNo;
		this.projectShortTitle = projectShortTitle;
		this.memberName = memberName;
		this.rewardMoney = rewardMoney;
		this.rewardName = rewardName;
		this.options = options;
		this.deliveryStatus = deliveryStatus;
		this.deliveryMoney = deliveryMoney;
		this.startDate = startDate;
		this.companyName = companyName;
		this.fundNo = fundNo;
		this.adjustNo = adjustNo;
		this.adjustState = adjustState;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public String getProjectShortTitle() {
		return projectShortTitle;
	}

	public void setProjectShortTitle(String projectShortTitle) {
		this.projectShortTitle = projectShortTitle;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getRewardMoney() {
		return rewardMoney;
	}

	public void setRewardMoney(String rewardMoney) {
		this.rewardMoney = rewardMoney;
	}

	public String getRewardName() {
		return rewardName;
	}

	public void setRewardName(String rewardName) {
		this.rewardName = rewardName;
	}

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public String getDeliveryMoney() {
		return deliveryMoney;
	}

	public void setDeliveryMoney(String deliveryMoney) {
		this.deliveryMoney = deliveryMoney;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public int getFundNo() {
		return fundNo;
	}

	public void setFundNo(int fundNo) {
		this.fundNo = fundNo;
	}

	public int getAdjustNo() {
		return adjustNo;
	}

	public void setAdjustNo(int adjustNo) {
		this.adjustNo = adjustNo;
	}

	public String getAdjustState() {
		return adjustState;
	}

	public void setAdjustState(String adjustState) {
		this.adjustState = adjustState;
	}

	@Override
	public String toString() {
		return "ExcelReward [projectNo=" + projectNo + ", projectShortTitle=" + projectShortTitle + ", memberName="
				+ memberName + ", rewardMoney=" + rewardMoney + ", rewardName=" + rewardName + ", options=" + options
				+ ", deliveryStatus=" + deliveryStatus + ", deliveryMoney=" + deliveryMoney + ", startDate=" + startDate
				+ ", companyName=" + companyName + ", fundNo=" + fundNo + ", adjustNo=" + adjustNo + ", adjustState="
				+ adjustState + "]";
	}

	
	
	
	
}
