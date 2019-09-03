package com.kh.yc.admin.model.vo;

public class Admin  implements java.io.Serializable{
	private int adminNo;
	private String adminId;
	private String adminPwd;
	private String manageCode;
	
	public Admin () {}
	
	

	public Admin(int adminNo, String adminId, String adminPwd, String manageCode) {
		super();
		this.adminNo = adminNo;
		this.adminId = adminId;
		this.adminPwd = adminPwd;
		this.manageCode = manageCode;
	}



	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getManageCode() {
		return manageCode;
	}

	public void setManageCode(String manageCode) {
		this.manageCode = manageCode;
	}



	@Override
	public String toString() {
		return "Admin [adminNo=" + adminNo + ", adminId=" + adminId + ", adminPwd=" + adminPwd + ", manageCode="
				+ manageCode + "]";
	}
	
	
	
}
