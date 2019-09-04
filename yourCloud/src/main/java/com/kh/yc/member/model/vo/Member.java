package com.kh.yc.member.model.vo;

public class Member  implements java.io.Serializable{
	private int userNo;
	private String userId;
	private String userPwd;
	private String email;
	private String userName;
	private String ssn;
	private String companyName;
	private String  account;
	private String gender;
	private String memberCategory;
	private int point;
	private int age;
	private String status;
	private String memberDiv;
	private String emailAgree;
	
	
	
	public Member() {}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMemberCategory() {
		return memberCategory;
	}

	public void setMemberCategory(String memberCategory) {
		this.memberCategory = memberCategory;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMemberDiv() {
		return memberDiv;
	}

	public void setMemberDiv(String memberDiv) {
		this.memberDiv = memberDiv;
	}

	public String getEmailAgree() {
		return emailAgree;
	}

	public void setEmailAgree(String emailAgree) {
		this.emailAgree = emailAgree;
	}

	public Member(int userNo, String userId, String userPwd, String email, String userName, String ssn,
			String companyName, String account, String gender, String memberCategory, int point, int age, String status,
			String memberDiv, String emailAgree) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.email = email;
		this.userName = userName;
		this.ssn = ssn;
		this.companyName = companyName;
		this.account = account;
		this.gender = gender;
		this.memberCategory = memberCategory;
		this.point = point;
		this.age = age;
		this.status = status;
		this.memberDiv = memberDiv;
		this.emailAgree = emailAgree;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", email=" + email
				+ ", userName=" + userName + ", ssn=" + ssn + ", companyName=" + companyName + ", account=" + account
				+ ", gender=" + gender + ", memberCategory=" + memberCategory + ", point=" + point + ", age=" + age
				+ ", status=" + status + ", memberDiv=" + memberDiv + ", emailAgree=" + emailAgree + "]";
	}

	
	
	
	
	
	
	
	
}
