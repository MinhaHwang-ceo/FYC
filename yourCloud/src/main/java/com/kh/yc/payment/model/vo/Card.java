package com.kh.yc.payment.model.vo;

import java.io.Serializable;

public class Card implements Serializable {
	private String cardNumber;
	private String expirationDate;
	private String cardDigit;
	private String birth;

	public Card() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Card(String cardNumber, String expirationDate, String cardDigit, String birth) {
		super();
		this.cardNumber = cardNumber;
		this.expirationDate = expirationDate;
		this.cardDigit = cardDigit;
		this.birth = birth;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getCardDigit() {
		return cardDigit;
	}

	public void setCardDigit(String cardDigit) {
		this.cardDigit = cardDigit;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "Card [cardNumber=" + cardNumber + ", expirationDate=" + expirationDate + ", cardDigit=" + cardDigit
				+ ", birth=" + birth + "]";
	}

}
