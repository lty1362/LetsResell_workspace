package com.LetsResell.service.model.vo;

import java.sql.Date;

public class Trade {
	
	// field
	private int rNum;
	private String saleName;
	private int tradeNo;
	private int saleNo;
	private int userNo;
	private int addressNo;
	private String tradeStatus;
	private String tradeService;
	private int tradeNumber;
	private Date tradeConclude;
	private Date tradeEnd;
	private int tradePrice;
	private int bidNo;
	
	// constructor
	public Trade() {
		
	}
	
	public Trade(int rNum, int saleNo, String saleName, int tradePrice, Date tradeEnd) {
		super();
		this.rNum = rNum;
		this.saleNo = saleNo;
		this.saleName = saleName;
		this.tradePrice = tradePrice;
		this.tradeEnd = tradeEnd;
	}

	public Trade(int tradeNo, int saleNo, int userNo, int addressNo, String tradeStatus, String tradeService,
			int tradeNumber, Date tradeConclude, Date tradeEnd, int tradePrice, int bidNo) {
		super();
		this.tradeNo = tradeNo;
		this.saleNo = saleNo;
		this.userNo = userNo;
		this.addressNo = addressNo;
		this.tradeStatus = tradeStatus;
		this.tradeService = tradeService;
		this.tradeNumber = tradeNumber;
		this.tradeConclude = tradeConclude;
		this.tradeEnd = tradeEnd;
		this.tradePrice = tradePrice;
		this.bidNo = bidNo;
	}
	
	// method
	
	public int getTradeNo() {
		return tradeNo;
	}
	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}


	public void setTradeNo(int tradeNo) {
		this.tradeNo = tradeNo;
	}
	public int getSaleNo() {
		return saleNo;
	}
	public void setSaleNo(int saleNo) {
		this.saleNo = saleNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getAddressNo() {
		return addressNo;
	}
	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}
	public String getTradeStatus() {
		return tradeStatus;
	}
	public void setTradeStatus(String tradeStatus) {
		this.tradeStatus = tradeStatus;
	}
	public String getTradeService() {
		return tradeService;
	}
	public void setTradeService(String tradeService) {
		this.tradeService = tradeService;
	}
	public int getTradeNumber() {
		return tradeNumber;
	}
	public void setTradeNumber(int tradeNumber) {
		this.tradeNumber = tradeNumber;
	}
	public Date getTradeConclude() {
		return tradeConclude;
	}
	public void setTradeConclude(Date tradeConclude) {
		this.tradeConclude = tradeConclude;
	}
	public Date getTradeEnd() {
		return tradeEnd;
	}
	public void setTradeEnd(Date tradeEnd) {
		this.tradeEnd = tradeEnd;
	}
	public int getTradePrice() {
		return tradePrice;
	}
	public void setTradePrice(int tradePrice) {
		this.tradePrice = tradePrice;
	}
	public int getBidNo() {
		return bidNo;
	}
	public void setBidNo(int bidNo) {
		this.bidNo = bidNo;
	}

	public String getSaleName() {
		return saleName;
	}

	public void setSaleName(String saleName) {
		this.saleName = saleName;
	}

	@Override
	public String toString() {
		return "Trade [rNum=" + rNum + ", saleName=" + saleName + ", tradeNo=" + tradeNo + ", saleNo=" + saleNo
				+ ", userNo=" + userNo + ", addressNo=" + addressNo + ", tradeStatus=" + tradeStatus + ", tradeService="
				+ tradeService + ", tradeNumber=" + tradeNumber + ", tradeConclude=" + tradeConclude + ", tradeEnd="
				+ tradeEnd + ", tradePrice=" + tradePrice + ", bidNo=" + bidNo + "]";
	}

	
}
