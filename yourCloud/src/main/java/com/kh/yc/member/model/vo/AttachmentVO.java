package com.kh.yc.member.model.vo;

public class AttachmentVO {
	
	
	private String attachmentNo;
	private String originFileName;
	private String fileSrc;
	private String newFileName;
	private String saveDate;
	private String attachmentDiv;
	private String boardNo;
	private String projectNo;
	
	public AttachmentVO() {
		
	}

	public AttachmentVO(String attachmentNo, String originFileName, String fileSrc, String newFileName, String saveDate,
			String attachmentDiv, String boardNo, String projectNo) {
		super();
		this.attachmentNo = attachmentNo;
		this.originFileName = originFileName;
		this.fileSrc = fileSrc;
		this.newFileName = newFileName;
		this.saveDate = saveDate;
		this.attachmentDiv = attachmentDiv;
		this.boardNo = boardNo;
		this.projectNo = projectNo;
	}

	public String getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(String attachmentNo) {
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

	public String getSaveDate() {
		return saveDate;
	}

	public void setSaveDate(String saveDate) {
		this.saveDate = saveDate;
	}

	public String getAttachmentDiv() {
		return attachmentDiv;
	}

	public void setAttachmentDiv(String attachmentDiv) {
		this.attachmentDiv = attachmentDiv;
	}

	public String getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(String boardNo) {
		this.boardNo = boardNo;
	}

	public String getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(String projectNo) {
		this.projectNo = projectNo;
	}

	@Override
	public String toString() {
		return "AttachmentVO [attachmentNo=" + attachmentNo + ", originFileName=" + originFileName + ", fileSrc="
				+ fileSrc + ", newFileName=" + newFileName + ", saveDate=" + saveDate + ", attachmentDiv="
				+ attachmentDiv + ", boardNo=" + boardNo + ", projectNo=" + projectNo + "]";
	}
	
}
