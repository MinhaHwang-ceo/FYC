package com.kh.yc.payment.model.vo;

import java.io.Serializable;

public class Payment implements Serializable {
	private String payNo;
	private int userNo;
	private int fundNo;
	private String payStatus;
	private int count;
	private int amount;

	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Payment(String payNo, int userNo, int fundNo, String payStatus, int count, int amount) {
		this.payNo = payNo;
		this.userNo = userNo;
		this.fundNo = fundNo;
		this.payStatus = payStatus;
		this.count = count;
		this.amount = amount;
	}

	public String getPayNo() {
		return payNo;
	}

	public void setPayNo(String payNo) {
		this.payNo = payNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getFundNo() {
		return fundNo;
	}

	public void setFundNo(int fundNo) {
		this.fundNo = fundNo;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Payment [payNo=" + payNo + ", userNo=" + userNo + ", fundNo=" + fundNo + ", payStatus=" + payStatus
				+ ", count=" + count + ", amount=" + amount + "]";
	}

}
