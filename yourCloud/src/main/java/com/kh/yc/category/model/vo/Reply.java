package com.kh.yc.category.model.vo;

import java.io.Serializable;

public class Reply implements Serializable{
	
	private int replyNo;
	private int projectNo;
	private int userNo;
	private String replyComment;
	private String userName;
	
	public Reply(){}

	public Reply(int replyNo, int projectNo, int userNo, String replyComment, String userName) {
		super();
		this.replyNo = replyNo;
		this.projectNo = projectNo;
		this.userNo = userNo;
		this.replyComment = replyComment;
		this.userName = userName;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getReplyComment() {
		return replyComment;
	}

	public void setReplyComment(String replyComment) {
		this.replyComment = replyComment;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", projectNo=" + projectNo + ", userNo=" + userNo + ", replyComment="
				+ replyComment + ", userName=" + userName + "]";
	}

	

}
