package com.LetsResell.product.model.vo;

import java.sql.Date;

public class Sale {
	private int saleNo;
	private int prNo;
	private int memUserNo;
	private int salePrice;
	private String saleName;
	private Date saleEnrollDate;
	private String saleCondition;
	private String saleStatus;
	private int saleSize;
	private String saleCategory;
	private int salePeriod;
	private String saleBoxStatus;
	private String titleImg;
	
	public Sale() {}

	public Sale(int saleNo, int prNo, int memUserNo, int salePrice, String saleName, Date saleEnrollDate,
			String saleCondition, String saleStatus, int saleSize, String saleCategory, int salePeriod,
			String saleBoxStatus, String titleImg) {
		super();
		this.saleNo = saleNo;
		this.prNo = prNo;
		this.memUserNo = memUserNo;
		this.salePrice = salePrice;
		this.saleName = saleName;
		this.saleEnrollDate = saleEnrollDate;
		this.saleCondition = saleCondition;
		this.saleStatus = saleStatus;
		this.saleSize = saleSize;
		this.saleCategory = saleCategory;
		this.salePeriod = salePeriod;
		this.saleBoxStatus = saleBoxStatus;
		this.titleImg = titleImg;
	}

	public int getSaleNo() {
		return saleNo;
	}

	public void setSaleNo(int saleNo) {
		this.saleNo = saleNo;
	}

	public int getPrNo() {
		return prNo;
	}

	public void setPrNo(int prNo) {
		this.prNo = prNo;
	}

	public int getMemUserNo() {
		return memUserNo;
	}

	public void setMemUserNo(int memUserNo) {
		this.memUserNo = memUserNo;
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

	public int getSaleSize() {
		return saleSize;
	}

	public void setSaleSize(int saleSize) {
		this.saleSize = saleSize;
	}

	public String getSaleCategory() {
		return saleCategory;
	}

	public void setSaleCategory(String saleCategory) {
		this.saleCategory = saleCategory;
	}

	public int getSalePeriod() {
		return salePeriod;
	}

	public void setSalePeriod(int salePeriod) {
		this.salePeriod = salePeriod;
	}

	public String getSaleBoxStatus() {
		return saleBoxStatus;
	}

	public void setSaleBoxStatus(String saleBoxStatus) {
		this.saleBoxStatus = saleBoxStatus;
	}

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "Sale [saleNo=" + saleNo + ", prNo=" + prNo + ", memUserNo=" + memUserNo + ", salePrice=" + salePrice
				+ ", saleName=" + saleName + ", saleEnrollDate=" + saleEnrollDate + ", saleCondition=" + saleCondition
				+ ", saleStatus=" + saleStatus + ", saleSize=" + saleSize + ", saleCategory=" + saleCategory
				+ ", salePeriod=" + salePeriod + ", saleBoxStatus=" + saleBoxStatus + ", titleImg=" + titleImg + "]";
	}
}
