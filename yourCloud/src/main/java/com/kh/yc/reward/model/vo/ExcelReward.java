package com.kh.yc.reward.model.vo;

public class ExcelReward {
	private String PROJECT_NO;
	private String PROJECT_SHORT_TITLE;
	private String MEMBER_NAME;
	private String REWARD_MONEY;
	private String REWARD_NAME;
	private String OPTIONS;
	private String DELIVERY_REQUEST;
	private String DELIVERY_MONEY;
	private String START_DATE;
	private String CONPANY_NAME;
	private int FUND_NO; 
	
	public ExcelReward (){}

	public ExcelReward(String pROJECT_NO, String pROJECT_SHORT_TITLE, String mEMBER_NAME, String rEWARD_MONEY,
			String rEWARD_NAME, String oPTIONS, String dELIVERY_REQUEST, String dELIVERY_MONEY, String sTART_DATE,
			String cONPANY_NAME, int fUND_NO) {
		super();
		PROJECT_NO = pROJECT_NO;
		PROJECT_SHORT_TITLE = pROJECT_SHORT_TITLE;
		MEMBER_NAME = mEMBER_NAME;
		REWARD_MONEY = rEWARD_MONEY;
		REWARD_NAME = rEWARD_NAME;
		OPTIONS = oPTIONS;
		DELIVERY_REQUEST = dELIVERY_REQUEST;
		DELIVERY_MONEY = dELIVERY_MONEY;
		START_DATE = sTART_DATE;
		CONPANY_NAME = cONPANY_NAME;
		FUND_NO = fUND_NO;
	}

	public String getPROJECT_NO() {
		return PROJECT_NO;
	}

	public void setPROJECT_NO(String pROJECT_NO) {
		PROJECT_NO = pROJECT_NO;
	}

	public String getPROJECT_SHORT_TITLE() {
		return PROJECT_SHORT_TITLE;
	}

	public void setPROJECT_SHORT_TITLE(String pROJECT_SHORT_TITLE) {
		PROJECT_SHORT_TITLE = pROJECT_SHORT_TITLE;
	}

	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}

	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}

	public String getREWARD_MONEY() {
		return REWARD_MONEY;
	}

	public void setREWARD_MONEY(String rEWARD_MONEY) {
		REWARD_MONEY = rEWARD_MONEY;
	}

	public String getREWARD_NAME() {
		return REWARD_NAME;
	}

	public void setREWARD_NAME(String rEWARD_NAME) {
		REWARD_NAME = rEWARD_NAME;
	}

	public String getOPTIONS() {
		return OPTIONS;
	}

	public void setOPTIONS(String oPTIONS) {
		OPTIONS = oPTIONS;
	}

	public String getDELIVERY_REQUEST() {
		return DELIVERY_REQUEST;
	}

	public void setDELIVERY_REQUEST(String dELIVERY_REQUEST) {
		DELIVERY_REQUEST = dELIVERY_REQUEST;
	}

	public String getDELIVERY_MONEY() {
		return DELIVERY_MONEY;
	}

	public void setDELIVERY_MONEY(String dELIVERY_MONEY) {
		DELIVERY_MONEY = dELIVERY_MONEY;
	}

	public String getSTART_DATE() {
		return START_DATE;
	}

	public void setSTART_DATE(String sTART_DATE) {
		START_DATE = sTART_DATE;
	}

	public String getCONPANY_NAME() {
		return CONPANY_NAME;
	}

	public void setCONPANY_NAME(String cONPANY_NAME) {
		CONPANY_NAME = cONPANY_NAME;
	}

	public int getFUND_NO() {
		return FUND_NO;
	}

	public void setFUND_NO(int fUND_NO) {
		FUND_NO = fUND_NO;
	}

	@Override
	public String toString() {
		return "ExcelReward [PROJECT_NO=" + PROJECT_NO + ", PROJECT_SHORT_TITLE=" + PROJECT_SHORT_TITLE
				+ ", MEMBER_NAME=" + MEMBER_NAME + ", REWARD_MONEY=" + REWARD_MONEY + ", REWARD_NAME=" + REWARD_NAME
				+ ", OPTIONS=" + OPTIONS + ", DELIVERY_REQUEST=" + DELIVERY_REQUEST + ", DELIVERY_MONEY="
				+ DELIVERY_MONEY + ", START_DATE=" + START_DATE + ", CONPANY_NAME=" + CONPANY_NAME + ", FUND_NO="
				+ FUND_NO + "]";
	}

	public void setCurrencyPair(String currencyPair) {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
