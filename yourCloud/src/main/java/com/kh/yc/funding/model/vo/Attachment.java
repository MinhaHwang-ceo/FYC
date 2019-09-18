package com.kh.yc.funding.model.vo;

import java.sql.Date;

public class Attachment implements java.io.Serializable {
	private int attachmentNo;
	private String originFileName;
	private String fileSrc;
	private String newFileName;
	private Date saveDate;
	private String attachmentDiv;
	private int boardNo;
	private int projectNo;
	private String fileLevel;

	public Attachment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Attachment(int attachmentNo, String originFileName, String fileSrc, String newFileName, Date saveDate,
			String attachmentDiv, int boardNo, int projectNo, String fileLevel) {
		this.attachmentNo = attachmentNo;
		this.originFileName = originFileName;
		this.fileSrc = fileSrc;
		this.newFileName = newFileName;
		this.saveDate = saveDate;
		this.attachmentDiv = attachmentDiv;
		this.boardNo = boardNo;
		this.projectNo = projectNo;
		this.fileLevel = fileLevel;
	}

	public int getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public String getOriginFileName() {
		return originFileName;
	}

	public void setOriginFileName(String originFileName) {
		this.originFileName = originFileName;
	}

	public String getFileSrc() {
		return fileSrc;
	}

	public void setFileSrc(String fileSrc) {
		this.fileSrc = fileSrc;
	}

	public String getNewFileName() {
		return newFileName;
	}

	public void setNewFileName(String newFileName) {
		this.newFileName = newFileName;
	}

	public Date getSaveDate() {
		return saveDate;
	}

	public void setSaveDate(Date saveDate) {
		this.saveDate = saveDate;
	}

	public String getAttachmentDiv() {
		return attachmentDiv;
	}

	public void setAttachmentDiv(String attachmentDiv) {
		this.attachmentDiv = attachmentDiv;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public String getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(String fileLevel) {
		this.fileLevel = fileLevel;
	}

	@Override
	public String toString() {
		return "Attachment [attachmentNo=" + attachmentNo + ", originFileName=" + originFileName + ", fileSrc="
				+ fileSrc + ", newFileName=" + newFileName + ", saveDate=" + saveDate + ", attachmentDiv="
				+ attachmentDiv + ", boardNo=" + boardNo + ", projectNo=" + projectNo + ", fileLevel=" + fileLevel
				+ "]";
	}

}
