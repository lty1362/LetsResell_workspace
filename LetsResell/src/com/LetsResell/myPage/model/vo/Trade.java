package com.LetsResell.myPage.model.vo;

import java.sql.Date;

public class Trade {
	
	private int tradeNo;			//거래번호
	private int saleNo; 			//상품판매번호
	private int memUserNo;			//회원번호
	private int addressNo;			//회원주소등록번호
	private String tradeStatus; 	//배송상태
	private String tradeService;	//택배사
	private int tradeNum;			//운송장번호
	private Date tradeCon;			//저래체결일
	private Date tradeEnd;			//거래완료일
	private int tradePrice;			//거래가격
	private int bidNo;				//경매번호
	private String saleName;		//상품명
	private String saleSize;		//사이즈
	private String saleCategory;	//제품분류
	private String saleCondition;	//상품상태
	private String titleImg;			// 대표 이미지
	
	public Trade() {
		
	}

	public Trade(int tradeNo, int saleNo, int memUserNo, int addressNo, String tradeStatus, String tradeService,
			int tradeNum, Date tradeCon, Date tradeEnd, int tradePrice, int bidNo) {
		super();
		this.tradeNo = tradeNo;
		this.saleNo = saleNo;
		this.memUserNo = memUserNo;
		this.addressNo = addressNo;
		this.tradeStatus = tradeStatus;
		this.tradeService = tradeService;
		this.tradeNum = tradeNum;
		this.tradeCon = tradeCon;
		this.tradeEnd = tradeEnd;
		this.tradePrice = tradePrice;
		this.bidNo = bidNo;
	}

	public Trade(int tradeNo, int saleNo, int memUserNo, int addressNo, String tradeStatus, String tradeService,
			int tradeNum, Date tradeCon, Date tradeEnd, int tradePrice, int bidNo, String saleName, String saleSize,
			String saleCategory, String saleCondition, String titleImg) {
		super();
		this.tradeNo = tradeNo;
		this.saleNo = saleNo;
		this.memUserNo = memUserNo;
		this.addressNo = addressNo;
		this.tradeStatus = tradeStatus;
		this.tradeService = tradeService;
		this.tradeNum = tradeNum;
		this.tradeCon = tradeCon;
		this.tradeEnd = tradeEnd;
		this.tradePrice = tradePrice;
		this.bidNo = bidNo;
		this.saleName = saleName;
		this.saleSize = saleSize;
		this.saleCategory = saleCategory;
		this.saleCondition = saleCondition;
		this.titleImg = titleImg;
	}

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public String getSaleName() {
		return saleName;
	}

	public void setSaleName(String saleName) {
		this.saleName = saleName;
	}

	public String getSaleSize() {
		return saleSize;
	}

	public void setSaleSize(String saleSize) {
		this.saleSize = saleSize;
	}

	public String getSaleCategory() {
		return saleCategory;
	}

	public void setSaleCategory(String saleCategory) {
		this.saleCategory = saleCategory;
	}

	public String getSaleCondition() {
		return saleCondition;
	}

	public void setSaleCondition(String saleCondition) {
		this.saleCondition = saleCondition;
	}

	public int getTradeNo() {
		return tradeNo;
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

	public int getMemUserNo() {
		return memUserNo;
	}

	public void setMemUserNo(int memUserNo) {
		this.memUserNo = memUserNo;
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

	public int getTradeNum() {
		return tradeNum;
	}

	public void setTradeNum(int tradeNum) {
		this.tradeNum = tradeNum;
	}

	public Date getTradeCon() {
		return tradeCon;
	}

	public void setTradeCon(Date tradeCon) {
		this.tradeCon = tradeCon;
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

	@Override
	public String toString() {
		return "Trade [tradeNo=" + tradeNo + ", saleNo=" + saleNo + ", memUserNo=" + memUserNo + ", addressNo="
				+ addressNo + ", tradeStatus=" + tradeStatus + ", tradeService=" + tradeService + ", tradeNum="
				+ tradeNum + ", tradeCon=" + tradeCon + ", tradeEnd=" + tradeEnd + ", tradePrice=" + tradePrice
				+ ", bidNo=" + bidNo + "]";
	}

}
