package com.LetsResell.myPage.model.vo;

import java.sql.Date;

public class Sale {
	
	private int saleNo;				//상품판매번호
	private int salePrice;			//상품가격
	private String saleName;		//상품명
	private Date saleEnrollDate;	//상품등록일
	private String saleCondition;	//상품상태
	private String saleStatus;		//거래상태
	private String saleSize;		//사이즈
	private String saleCategory;	//제품분류
	private String salePeriod;		//입찰기간
	private String boxStatus;		//박스상태
	private String titleImg;			// 대표 이미지
	
	public Sale() {
		
	}

	public Sale(int saleNo, int salePrice, String saleName, Date saleEnrollDate, String saleCondition,
			String saleStatus, String saleSize, String saleCategory, String salePeriod, String boxStatus) {
		super();
		this.saleNo = saleNo;
		this.salePrice = salePrice;
		this.saleName = saleName;
		this.saleEnrollDate = saleEnrollDate;
		this.saleCondition = saleCondition;
		this.saleStatus = saleStatus;
		this.saleSize = saleSize;
		this.saleCategory = saleCategory;
		this.salePeriod = salePeriod;
		this.boxStatus = boxStatus;
	}

	public Sale(int saleNo, int salePrice, String saleName, Date saleEnrollDate, String saleCondition,
			String saleStatus, String saleSize, String saleCategory, String salePeriod, String boxStatus,
			String titleImg) {
		super();
		this.saleNo = saleNo;
		this.salePrice = salePrice;
		this.saleName = saleName;
		this.saleEnrollDate = saleEnrollDate;
		this.saleCondition = saleCondition;
		this.saleStatus = saleStatus;
		this.saleSize = saleSize;
		this.saleCategory = saleCategory;
		this.salePeriod = salePeriod;
		this.boxStatus = boxStatus;
		this.titleImg = titleImg;
	}
	
	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public int getSaleNo() {
		return saleNo;
	}

	public void setSaleNo(int saleNo) {
		this.saleNo = saleNo;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public String getSaleName() {
		return saleName;
	}

	public void setSaleName(String saleName) {
		this.saleName = saleName;
	}

	public Date getSaleEnrollDate() {
		return saleEnrollDate;
	}

	public void setSaleEnrollDate(Date saleEnrollDate) {
		this.saleEnrollDate = saleEnrollDate;
	}

	public String getSaleCondition() {
		return saleCondition;
	}

	public void setSaleCondition(String saleCondition) {
		this.saleCondition = saleCondition;
	}

	public String getSaleStatus() {
		return saleStatus;
	}

	public void setSaleStatus(String saleStatus) {
		this.saleStatus = saleStatus;
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

	public String getSalePeriod() {
		return salePeriod;
	}

	public void setSalePeriod(String salePeriod) {
		this.salePeriod = salePeriod;
	}

	public String getBoxStatus() {
		return boxStatus;
	}

	public void setBoxStatus(String boxStatus) {
		this.boxStatus = boxStatus;
	}

	@Override
	public String toString() {
		return "Sale [saleNo=" + saleNo + ", salePrice=" + salePrice + ", saleName=" + saleName + ", saleEnrollDate="
				+ saleEnrollDate + ", saleCondition=" + saleCondition + ", saleStatus=" + saleStatus + ", saleSize="
				+ saleSize + ", saleCategory=" + saleCategory + ", salePeriod=" + salePeriod + ", boxStatus="
				+ boxStatus + "]";
	}

}
