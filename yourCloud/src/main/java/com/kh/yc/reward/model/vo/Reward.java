package com.kh.yc.reward.model.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;



public class Reward {

	private int rewardNo;
	private int rewardMoney;
	private String sortNo;
	private String rewardName;
	private String option;
	private String deliveryRequest;
	private int deliveryMoney;
	private int limitCount;
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	private int projectNo;
	private String projectShortTitle;
	private String memberName;
	private int money;
	private String description;

	public Reward() {
	}

	public Reward(int rewardNo, int rewardMoney, String sortNo, String rewardName, String option,
			String deliveryRequest, int deliveryMoney, int limitCount, Date startDate, int projectNo,
			String projectShortTitle, String memberName, int money, String description) {
		super();
		this.rewardNo = rewardNo;
		this.rewardMoney = rewardMoney;
		this.sortNo = sortNo;
		this.rewardName = rewardName;
		this.option = option;
		this.deliveryRequest = deliveryRequest;
		this.deliveryMoney = deliveryMoney;
		this.limitCount = limitCount;
		this.startDate = startDate;
		this.projectNo = projectNo;
		this.projectShortTitle = projectShortTitle;
		this.memberName = memberName;
		this.money = money;
		this.description = description;
	}

	public int getRewardNo() {
		return rewardNo;
	}

	public void setRewardNo(int rewardNo) {
		this.rewardNo = rewardNo;
	}

	public int getRewardMoney() {
		return rewardMoney;
	}

	public void setRewardMoney(int rewardMoney) {
		this.rewardMoney = rewardMoney;
	}

	public String getSortNo() {
		return sortNo;
	}

	public void setSortNo(String sortNo) {
		this.sortNo = sortNo;
	}

	public String getRewardName() {
		return rewardName;
	}

	public void setRewardName(String rewardName) {
		this.rewardName = rewardName;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public String getDeliveryRequest() {
		return deliveryRequest;
	}

	public void setDeliveryRequest(String deliveryRequest) {
		this.deliveryRequest = deliveryRequest;
	}

	public int getDeliveryMoney() {
		return deliveryMoney;
	}

	public void setDeliveryMoney(int deliveryMoney) {
		this.deliveryMoney = deliveryMoney;
	}

	public int getLimitCount() {
		return limitCount;
	}

	public void setLimitCount(int limitCount) {
		this.limitCount = limitCount;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
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

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Reward [rewardNo=" + rewardNo + ", rewardMoney=" + rewardMoney + ", sortNo=" + sortNo + ", rewardName="
				+ rewardName + ", option=" + option + ", deliveryRequest=" + deliveryRequest + ", deliveryMoney="
				+ deliveryMoney + ", limitCount=" + limitCount + ", startDate=" + startDate + ", projectNo=" + projectNo
				+ ", projectShortTitle=" + projectShortTitle + ", memberName=" + memberName + ", money=" + money
				+ ", description=" + description + "]";
	}
}
