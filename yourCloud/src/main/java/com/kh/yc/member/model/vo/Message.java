package com.kh.yc.member.model.vo;

import java.util.Date;

public class Message implements java.io.Serializable{
	
	private int messageNo;
	private int sendMember;
	private int receiveMember;
	private String createDate;
	private String messageContent;
	private String status;
	private String userName;
	
	public Message() {}

	public Message(int messageNo, int sendMember, int receiveMember, String createDate, String messageContent,
			String status, String userName) {
		super();
		this.messageNo = messageNo;
		this.sendMember = sendMember;
		this.receiveMember = receiveMember;
		this.createDate = createDate;
		this.messageContent = messageContent;
		this.status = status;
		this.userName = userName;
	}

	public int getMessageNo() {
		return messageNo;
	}

	public void setMessageNo(int messageNo) {
		this.messageNo = messageNo;
	}

	public int getSendMember() {
		return sendMember;
	}

	public void setSendMember(int sendMember) {
		this.sendMember = sendMember;
	}

	public int getReceiveMember() {
		return receiveMember;
	}

	public void setReceiveMember(int receiveMember) {
		this.receiveMember = receiveMember;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "Message [messageNo=" + messageNo + ", sendMember=" + sendMember + ", receiveMember=" + receiveMember
				+ ", createDate=" + createDate + ", messageContent=" + messageContent + ", status=" + status
				+ ", userName=" + userName + "]";
	}

		
}
