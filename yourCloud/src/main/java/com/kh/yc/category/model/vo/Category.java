package com.kh.yc.category.model.vo;

import java.io.Serializable;

public class Category implements Serializable{
	private String category;
	private String categoryDiv;
	
	public Category () {}

	public Category(String category, String categoryDiv) {
		super();
		this.category = category;
		this.categoryDiv = categoryDiv;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCategoryDiv() {
		return categoryDiv;
	}

	public void setCategoryDiv(String categoryDiv) {
		this.categoryDiv = categoryDiv;
	}

	@Override
	public String toString() {
		return "Category [category=" + category + ", categoryDiv=" + categoryDiv + "]";
	}
	
	
}
