package com.kh.yc.reward.model.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Reward {

	private int rewardNo;
	private int rewardMoney;
	private String sortNo;
	private String rewardName;
	private String option;
	private String deliveryRequest;
	private int limitCount;
	private String projectShortTitle;
	private String memberName;
	private int money;
	private int userNo; // 회원번호
	private Date fundDate; // 펀딩시작일
	private int fundNo; // 펀딩번호
	private int projectNo; // 프로젝트번호
	private int fundMoney; // 펀딩금액
	private String account; // 계좌번호
	private String category; // 카테고리 코드
	private String categoryDiv; // 카테고리 이름
	private Date endDate; // 종료일
	private String projectTitle; // 프로젝트제목
	private String companyName; // 메이커(법인명)
	private String deliverySite; // 주소
	private int deliveryMoney; // 배송비
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date startDate; // 발송시작일
	private String options; // 옵션 조건
	private String payStatus; // 결제정보
	private String rewardCategory;
	private String rewardDetail;

	public Reward() {
	}

	public Reward(int rewardNo, int rewardMoney, String sortNo, String rewardName, String option,
			String deliveryRequest, int limitCount, String projectShortTitle, String memberName, int money, int userNo,
			Date fundDate, int fundNo, int projectNo, int fundMoney, String account, String category,
			String categoryDiv, Date endDate, String projectTitle, String companyName, String deliverySite,
      int deliveryMoney, Date startDate, String options, String payStatus, String description,
			String rewardCategory, String rewardDetail) {
		super();

		this.rewardNo = rewardNo;
		this.rewardMoney = rewardMoney;
		this.sortNo = sortNo;
		this.rewardName = rewardName;
		this.option = option;
		this.deliveryRequest = deliveryRequest;
		this.limitCount = limitCount;
		this.projectShortTitle = projectShortTitle;
		this.memberName = memberName;
		this.money = money;
		this.userNo = userNo;
		this.fundDate = fundDate;
		this.fundNo = fundNo;
		this.projectNo = projectNo;
		this.fundMoney = fundMoney;
		this.account = account;
		this.category = category;
		this.categoryDiv = categoryDiv;
		this.endDate = endDate;
		this.projectTitle = projectTitle;
		this.companyName = companyName;
		this.deliverySite = deliverySite;
		this.deliveryMoney = deliveryMoney;
		this.startDate = startDate;
		this.options = options;
		this.payStatus = payStatus;
		this.rewardDetail = rewardDetail;
		this.rewardCategory = rewardCategory;
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

	public int getLimitCount() {
		return limitCount;
	}

	public void setLimitCount(int limitCount) {
		this.limitCount = limitCount;
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

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public Date getFundDate() {
		return fundDate;
	}

	public void setFundDate(Date fundDate) {
		this.fundDate = fundDate;
	}

	public int getFundNo() {
		return fundNo;
	}

	public void setFundNo(int fundNo) {
		this.fundNo = fundNo;
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

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCategoryDiv() {
		return categoryDiv;
	}

	public void setCategoryDiv(String categoryDiv) {
		this.categoryDiv = categoryDiv;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getProjectTitle() {
		return projectTitle;
	}

	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getDeliverySite() {
		return deliverySite;
	}

	public void setDeliverySite(String deliverySite) {
		this.deliverySite = deliverySite;
	}

	public int getDeliveryMoney() {
		return deliveryMoney;
	}

	public void setDeliveryMoney(int deliveryMoney) {
		this.deliveryMoney = deliveryMoney;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public String getRewardDetail() {
		return rewardDetail;
	}

	public void setRewardDetail(String rewardDetail) {
		this.rewardDetail = rewardDetail;
	}

	public String getRewardCategory() {
		return rewardCategory;
	}

	public void setRewardCategory(String rewardCategory) {
		this.rewardCategory = rewardCategory;
	}


	@Override
	public String toString() {
		return "Reward [rewardNo=" + rewardNo + ", rewardMoney=" + rewardMoney + ", sortNo=" + sortNo + ", rewardName="
				+ rewardName + ", option=" + option + ", deliveryRequest=" + deliveryRequest + ", limitCount="
				+ limitCount + ", projectShortTitle=" + projectShortTitle + ", memberName=" + memberName + ", money="
				+ money + ", userNo=" + userNo + ", fundDate=" + fundDate + ", fundNo=" + fundNo + ", projectNo="
				+ projectNo + ", fundMoney=" + fundMoney + ", account=" + account + ", category=" + category
				+ ", categoryDiv=" + categoryDiv + ", endDate=" + endDate + ", projectTitle=" + projectTitle
				+ ", companyName=" + companyName + ", deliverySite=" + deliverySite + ", deliveryMoney=" + deliveryMoney
				+ ", startDate=" + startDate + ", options=" + options + ", payStatus=" + payStatus + ", rewardCategory=" + rewardCategory + ", rewardDetail=" + rewardDetail + "]";
	}

}
