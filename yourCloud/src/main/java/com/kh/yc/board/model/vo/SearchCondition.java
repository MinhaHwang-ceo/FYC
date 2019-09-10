package com.kh.yc.board.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class SearchCondition implements Serializable{
	private String writer;
	private String title;
	private String content;

	public SearchCondition() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SearchCondition(String writer, String title, String content) {
		super();
		this.writer = writer;
		this.title = title;
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "SearchCondition [writer=" + writer + ", title=" + title + ", content=" + content + "]";
	}

}
