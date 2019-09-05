package com.kh.yc.project.model.vo;

import java.sql.Date;

public class Project {
	private int projectNo;
	private String category;
	private String success;
	private String judgeStatus;
	private String progressStatus;
	private int agreement;
	private String reason;
	private int adminNo;
	private String summary;
	private String profileImg;
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
	private int monet;
	private int mainImg;
	private String document;
	private String progress;
	private String delivert;
	private Date endDate;
	private String adult;
	private String expected;
	private int memberNo;
	
	public Project() {}

	public Project(int projectNo, String category, String success, String judgeStatus, String progressStatus,
			int agreement, String reason, int adminNo, String summary, String profileImg, String social, String site,
			String email, String phone, String fees, String makerDiv, String agentName, String agentEmail,
			String projectTitle, String projectShortTitle, int monet, int mainImg, String document, String progress,
			String delivert, Date endDate, String adult, String expected, int memberNo) {
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
		this.profileImg = profileImg;
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
		this.monet = monet;
		this.mainImg = mainImg;
		this.document = document;
		this.progress = progress;
		this.delivert = delivert;
		this.endDate = endDate;
		this.adult = adult;
		this.expected = expected;
		this.memberNo = memberNo;
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

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
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

	public int getMonet() {
		return monet;
	}

	public void setMonet(int monet) {
		this.monet = monet;
	}

	public int getMainImg() {
		return mainImg;
	}

	public void setMainImg(int mainImg) {
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

	public String getDelivert() {
		return delivert;
	}

	public void setDelivert(String delivert) {
		this.delivert = delivert;
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

	public String getExpected() {
		return expected;
	}

	public void setExpected(String expected) {
		this.expected = expected;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "Project [projectNo=" + projectNo + ", category=" + category + ", success=" + success + ", judgeStatus="
				+ judgeStatus + ", progressStatus=" + progressStatus + ", agreement=" + agreement + ", reason=" + reason
				+ ", adminNo=" + adminNo + ", summary=" + summary + ", profileImg=" + profileImg + ", social=" + social
				+ ", site=" + site + ", email=" + email + ", phone=" + phone + ", fees=" + fees + ", makerDiv="
				+ makerDiv + ", agentName=" + agentName + ", agentEmail=" + agentEmail + ", projectTitle="
				+ projectTitle + ", projectShortTitle=" + projectShortTitle + ", monet=" + monet + ", mainImg="
				+ mainImg + ", document=" + document + ", progress=" + progress + ", delivert=" + delivert
				+ ", endDate=" + endDate + ", adult=" + adult + ", expected=" + expected + ", memberNo=" + memberNo
				+ "]";
	}
	
	
}
