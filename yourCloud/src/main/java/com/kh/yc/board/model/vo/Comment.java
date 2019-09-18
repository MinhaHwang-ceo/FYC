package com.kh.yc.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Comment implements Serializable {
	private int cNo;
	private String writer;
	private String createDate;
	private int refCNo;
	private String content;
	private int bNo;

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Comment(int cNo, String writer, String createDate, int refCNo, String content, int bNo) {
		this.cNo = cNo;
		this.writer = writer;
		this.createDate = createDate;
		this.refCNo = refCNo;
		this.content = content;
		this.bNo = bNo;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public int getRefCNo() {
		return refCNo;
	}

	public void setRefCNo(int refCNo) {
		this.refCNo = refCNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	@Override
	public String toString() {
		return "Comment [cNo=" + cNo + ", writer=" + writer + ", createDate=" + createDate + ", refCNo=" + refCNo
				+ ", content=" + content + ", bNo=" + bNo + "]";
	}

}
