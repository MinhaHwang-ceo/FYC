package com.kh.yc.reward.model.vo;

import java.io.Serializable;

public class RewardInfo implements Serializable {
	private int projectNo;
	private int rewardNo;
	private String modelName;
	private String modelType;
	private String modelMat;
	private String modelSize;
	private String manufacturer;
	private String manufacturerNation;
	private String modelNotice;
	private String modelWarranty;
	private String modelAdmin;

	public RewardInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RewardInfo(int projectNo, int rewardNo, String modelName, String modelType, String modelMat,
			String modelSize, String manufacturer, String manufacturerNation, String modelNotice, String modelWarranty,
			String modelAdmin) {
		this.projectNo = projectNo;
		this.rewardNo = rewardNo;
		this.modelName = modelName;
		this.modelType = modelType;
		this.modelMat = modelMat;
		this.modelSize = modelSize;
		this.manufacturer = manufacturer;
		this.manufacturerNation = manufacturerNation;
		this.modelNotice = modelNotice;
		this.modelWarranty = modelWarranty;
		this.modelAdmin = modelAdmin;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public int getRewardNo() {
		return rewardNo;
	}

	public void setRewardNo(int rewardNo) {
		this.rewardNo = rewardNo;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getModelType() {
		return modelType;
	}

	public void setModelType(String modelType) {
		this.modelType = modelType;
	}

	public String getModelMat() {
		return modelMat;
	}

	public void setModelMat(String modelMat) {
		this.modelMat = modelMat;
	}

	public String getModelSize() {
		return modelSize;
	}

	public void setModelSize(String modelSize) {
		this.modelSize = modelSize;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getManufacturerNation() {
		return manufacturerNation;
	}

	public void setManufacturerNation(String manufacturerNation) {
		this.manufacturerNation = manufacturerNation;
	}

	public String getModelNotice() {
		return modelNotice;
	}

	public void setModelNotice(String modelNotice) {
		this.modelNotice = modelNotice;
	}

	public String getModelWarranty() {
		return modelWarranty;
	}

	public void setModelWarranty(String modelWarranty) {
		this.modelWarranty = modelWarranty;
	}

	public String getModelAdmin() {
		return modelAdmin;
	}

	public void setModelAdmin(String modelAdmin) {
		this.modelAdmin = modelAdmin;
	}

	@Override
	public String toString() {
		return "RewardInfo [projectNo=" + projectNo + ", rewardNo=" + rewardNo + ", modelName=" + modelName
				+ ", modelType=" + modelType + ", modelMat=" + modelMat + ", modelSize=" + modelSize + ", manufacturer="
				+ manufacturer + ", manufacturerNation=" + manufacturerNation + ", modelNotice=" + modelNotice
				+ ", modelWarranty=" + modelWarranty + ", modelAdmin=" + modelAdmin + "]";
	}

}
