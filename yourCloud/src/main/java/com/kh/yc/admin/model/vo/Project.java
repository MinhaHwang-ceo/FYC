package com.kh.yc.admin.model.vo;

import java.sql.Date;

public class Project implements java.io.Serializable{
	private int projectNo;
	private String category;
	private String success;
	private String judgeStatus;
	private String progressStatus;
	private int agreement;
	private String reason;
	private int adminNo;
	private String summary;
	private String prifileImg;
	private String social;
	private String site;
	private String email;
	private String phone;
	private String fees;
	private String makerDiv;
	private String agentName;
	private String agentEmail;
	private String projectTitle;
	private String projectShortTitle;
	private int money;
	private String mainImg;
	private String document;
	private String progress;
	private String delivery;
	private Date endDate;
	private String adult;
	private int userNo;
	private int reportCount
	private int payNo;
	private int adjustNo;
	private Date adjustDate;
	private int adjustMoney;
	private String companyName;
	
	public Project() {}


	public Project(int projectNo, String category, String success, String judgeStatus, String progressStatus,
			int agreement, String reason, int adminNo, String summary, String prifileImg, String social, String site,
			String email, String phone, String fees, String makerDiv, String agentName, String agentEmail,
			String projectTitle, String projectShortTitle, int money, String mainImg, String document, String progress,
			String delivery, Date endDate, String adult, int userNo, int reportCount, int payNo, int adjustNo,
			Date adjustDate, int adjustMoney, String companyName) {

		super();
		this.projectNo = projectNo;
		this.category = category;
		this.success = success;
		this.judgeStatus = judgeStatus;
		this.progressStatus = progressStatus;
		this.agreement = agreement;
		this.reason = reason;
		this.adminNo = adminNo;
		this.summary = summary;
		this.prifileImg = prifileImg;
		this.social = social;
		this.site = site;
		this.email = email;
		this.phone = phone;
		this.fees = fees;
		this.makerDiv = makerDiv;
		this.agentName = agentName;
		this.agentEmail = agentEmail;
		this.projectTitle = projectTitle;
		this.projectShortTitle = projectShortTitle;
		this.money = money;
		this.mainImg = mainImg;
		this.document = document;
		this.progress = progress;
		this.delivery = delivery;
		this.endDate = endDate;
		this.adult = adult;
		this.userNo = userNo;
		this.reportCount = reportCount;
		this.payNo = payNo;
		this.adjustNo = adjustNo;
		this.adjustDate = adjustDate;
		this.adjustMoney = adjustMoney;
		this.companyName = companyName;
	}


	public int getProjectNo() {
		return projectNo;
	}


	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getSuccess() {
		return success;
	}


	public void setSuccess(String success) {
		this.success = success;
	}


	public String getJudgeStatus() {
		return judgeStatus;
	}


	public void setJudgeStatus(String judgeStatus) {
		this.judgeStatus = judgeStatus;
	}


	public String getProgressStatus() {
		return progressStatus;
	}


	public void setProgressStatus(String progressStatus) {
		this.progressStatus = progressStatus;
	}


	public int getAgreement() {
		return agreement;
	}


	public void setAgreement(int agreement) {
		this.agreement = agreement;
	}


	public String getReason() {
		return reason;
	}


	public void setReason(String reason) {
		this.reason = reason;
	}


	public int getAdminNo() {
		return adminNo;
	}


	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}


	public String getSummary() {
		return summary;
	}


	public void setSummary(String summary) {
		this.summary = summary;
	}


	public String getPrifileImg() {
		return prifileImg;
	}


	public void setPrifileImg(String prifileImg) {
		this.prifileImg = prifileImg;
	}


	public String getSocial() {
		return social;
	}


	public void setSocial(String social) {
		this.social = social;
	}


	public String getSite() {
		return site;
	}


	public void setSite(String site) {
		this.site = site;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getFees() {
		return fees;
	}


	public void setFees(String fees) {
		this.fees = fees;
	}


	public String getMakerDiv() {
		return makerDiv;
	}


	public void setMakerDiv(String makerDiv) {
		this.makerDiv = makerDiv;
	}


	public String getAgentName() {
		return agentName;
	}


	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}


	public String getAgentEmail() {
		return agentEmail;
	}


	public void setAgentEmail(String agentEmail) {
		this.agentEmail = agentEmail;
	}


	public String getProjectTitle() {
		return projectTitle;
	}


	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}


	public String getProjectShortTitle() {
		return projectShortTitle;
	}


	public void setProjectShortTitle(String projectShortTitle) {
		this.projectShortTitle = projectShortTitle;
	}


	public int getMoney() {
		return money;
	}


	public void setMoney(int money) {
		this.money = money;
	}


	public String getMainImg() {
		return mainImg;
	}


	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}


	public String getDocument() {
		return document;
	}


	public void setDocument(String document) {
		this.document = document;
	}


	public String getProgress() {
		return progress;
	}


	public void setProgress(String progress) {
		this.progress = progress;
	}


	public String getDelivery() {
		return delivery;
	}


	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}


	public Date getEndDate() {
		return endDate;
	}


	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


	public String getAdult() {
		return adult;
	}


	public void setAdult(String adult) {
		this.adult = adult;
	}

	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public int getAdjustNo() {
		return adjustNo;
	}

	public void setAdjustNo(int adjustNo) {
		this.adjustNo = adjustNo;
	}

	public Date getAdjustDate() {
		return adjustDate;
	}

	public void setAdjustDate(Date adjustDate) {
		this.adjustDate = adjustDate;
	}

	public int getAdjustMoney() {
		return adjustMoney;
	}

	public void setAdjustMoney(int adjustMoney) {
		this.adjustMoney = adjustMoney;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Override
	public String toString() {
		return "Project [projectNo=" + projectNo + ", category=" + category + ", success=" + success + ", judgeStatus="
				+ judgeStatus + ", progressStatus=" + progressStatus + ", agreement=" + agreement + ", reason=" + reason
				+ ", adminNo=" + adminNo + ", summary=" + summary + ", prifileImg=" + prifileImg + ", social=" + social
				+ ", site=" + site + ", email=" + email + ", phone=" + phone + ", fees=" + fees + ", makerDiv="
				+ makerDiv + ", agentName=" + agentName + ", agentEmail=" + agentEmail + ", projectTitle="
				+ projectTitle + ", projectShortTitle=" + projectShortTitle + ", money=" + money + ", mainImg="
				+ mainImg + ", document=" + document + ", progress=" + progress + ", delivery=" + delivery
				+ ", endDate=" + endDate + ", adult=" + adult + ", userNo=" + userNo + ", reportCount=" + reportCount
				+ ", payNo=" + payNo + ", adjustNo=" + adjustNo + ", adjustDate=" + adjustDate + ", adjustMoney="
				+ adjustMoney + ", companyName=" + companyName + "]";
	}

	
	

	
	
}
