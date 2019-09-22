package com.kh.yc.delivery.model.vo;

import java.io.Serializable;

public class Delivery implements Serializable {

	private String userNo;
	private String deliveryNo;
	private String deliverySite;
	private String userName;
	private String phone;
	private String etc;
	private String status;

	public Delivery() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Delivery(String userNo, String deliveryNo, String deliverySite, String userName, String phone, String etc,
			String status) {
		this.userNo = userNo;
		this.deliveryNo = deliveryNo;
		this.deliverySite = deliverySite;
		this.userName = userName;
		this.phone = phone;
		this.etc = etc;
		this.status = status;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getDeliveryNo() {
		return deliveryNo;
	}

	public void setDeliveryNo(String deliveryNo) {
		this.deliveryNo = deliveryNo;
	}

	public String getDeliverySite() {
		return deliverySite;
	}

	public void setDeliverySite(String deliverySite) {
		this.deliverySite = deliverySite;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Delivery [userNo=" + userNo + ", deliveryNo=" + deliveryNo + ", deliverySite=" + deliverySite
				+ ", userName=" + userName + ", phone=" + phone + ", etc=" + etc + ", status=" + status + "]";
	}

}
