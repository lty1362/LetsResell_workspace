package com.LetsResell.myPage.model.vo;

import java.sql.Date;

public class Bid {
	
	private int bidNo; 		//경매번호
	private int saleNo; 	//상품판매번호
	private int memUserNo;	//구매자 = 회원번호
	private int bidPrice;	//입찰가
	private Date bidDate;	//입찰날짜
	private int addressNo; 	//회원주소등록번호
	private String bidStatus;	//경매상태
	private String saleName;		//상품명
	private String saleCondition;	//상품상태
	private String saleSize;		//사이즈
	private String saleCategory;	//제품분류
	private String titleImg;			// 대표 이미지
	private String memUserId;
	
	public Bid() {
		
	}

	public Bid(int bidNo, int saleNo, int memUserNo, int bidPrice, Date bidDate, int addressNo, String bidStatus) {
		super();
		this.bidNo = bidNo;
		this.saleNo = saleNo;
		this.memUserNo = memUserNo;
		this.bidPrice = bidPrice;
		this.bidDate = bidDate;
		this.addressNo = addressNo;
		this.bidStatus = bidStatus;
	}

	public Bid(int bidNo, int saleNo, int memUserNo, int bidPrice, Date bidDate, int addressNo, String bidStatus,
			String saleName, String saleCondition, String saleSize, String saleCategory, String titleImg,
			String memUserId) {
		super();
		this.bidNo = bidNo;
		this.saleNo = saleNo;
		this.memUserNo = memUserNo;
		this.bidPrice = bidPrice;
		this.bidDate = bidDate;
		this.addressNo = addressNo;
		this.bidStatus = bidStatus;
		this.saleName = saleName;
		this.saleCondition = saleCondition;
		this.saleSize = saleSize;
		this.saleCategory = saleCategory;
		this.titleImg = titleImg;
		this.memUserId = memUserId;
	}

	public String getMemUserId() {
		return memUserId;
	}

	public void setMemUserId(String memUserId) {
		this.memUserId = memUserId;
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

	public String getSaleCondition() {
		return saleCondition;
	}

	public void setSaleCondition(String saleCondition) {
		this.saleCondition = saleCondition;
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

	public int getBidNo() {
		return bidNo;
	}

	public void setBidNo(int bidNo) {
		this.bidNo = bidNo;
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

	public int getBidPrice() {
		return bidPrice;
	}

	public void setBidPrice(int bidPrice) {
		this.bidPrice = bidPrice;
	}

	public Date getBidDate() {
		return bidDate;
	}

	public void setBidDate(Date bidDate) {
		this.bidDate = bidDate;
	}

	public int getAddressNo() {
		return addressNo;
	}

	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}

	public String getBidStatus() {
		return bidStatus;
	}

	public void setBidStatus(String bidStatus) {
		this.bidStatus = bidStatus;
	}

	@Override
	public String toString() {
		return "Bid [bidNo=" + bidNo + ", saleNo=" + saleNo + ", memUserNo=" + memUserNo + ", bidPrice=" + bidPrice
				+ ", bidDate=" + bidDate + ", addressNo=" + addressNo + ", bidStatus=" + bidStatus + "]";
	}

}
