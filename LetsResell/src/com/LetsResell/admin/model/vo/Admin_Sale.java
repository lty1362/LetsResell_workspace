package com.LetsResell.admin.model.vo;

import java.sql.Date;

public class Admin_Sale {
	
	// field
	private int rNum;
	private int saleNum;
	private int prNum;
	private int saleMember;
	private String saleName;
	private int salePrice;
	private Date saleDate;
	private int tradePrice;
	private Date tradeEnd;
	private String userId;
	
	// constructor
	public Admin_Sale(){
		
	}
	
	
	public Admin_Sale(int rNum, int saleNum, int prNum,  String userId, String saleName, int salePrice, 
			Date saleDate) {
		super();
		this.rNum = rNum;
		this.prNum = prNum;
		this.saleNum = saleNum;
		this.saleName = saleName;
		this.salePrice = salePrice;
		this.saleDate = saleDate;
		this.userId = userId;
	}


	public Admin_Sale(int rNum, int saleNum, String saleName, int tradePrice, Date tradeEnd) {
		super();
		this.rNum = rNum;
		this.saleNum = saleNum;
		this.saleName = saleName;
		this.tradePrice = tradePrice;
		this.tradeEnd = tradeEnd;
	}

	public Admin_Sale(int rNum, int saleNum, int pRnum, String saleName, int salePrice, Date saleDate) {
		super();
		this.rNum = rNum;
		this.saleNum = saleNum;
		this.prNum = pRnum;
		this.saleName = saleName;
		this.salePrice = salePrice;
		this.saleDate = saleDate;
	}
	
	public Admin_Sale(int rNum, int saleNum, int prNum, int saleMember, String saleName, int salePrice, Date saleDate) {
		super();
		this.rNum = rNum;
		this.saleNum = saleNum;
		this.prNum = prNum;
		this.saleMember = saleMember;
		this.saleName = saleName;
		this.salePrice = salePrice;
		this.saleDate = saleDate;
	}
	// method
	
	public int getrNum() {
		return rNum;
	}
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getTradePrice() {
		return tradePrice;
	}

	public void setTradePrice(int tradePrice) {
		this.tradePrice = tradePrice;
	}

	public Date getTradeEnd() {
		return tradeEnd;
	}

	public void setTradeEnd(Date tradeEnd) {
		this.tradeEnd = tradeEnd;
	}

	public int getSaleMember() {
		return saleMember;
	}
	public void setSaleMember(int saleMember) {
		this.saleMember = saleMember;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public int getSaleNum() {
		return saleNum;
	}
	public void setSaleNum(int saleNum) {
		this.saleNum = saleNum;
	}
	public int getPrNum() {
		return prNum;
	}
	public void setPrNum(int prNum) {
		this.prNum = prNum;
	}
	public String getSaleName() {
		return saleName;
	}
	public void setSaleName(String saleName) {
		this.saleName = saleName;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public Date getSaleDate() {
		return saleDate;
	}
	public void setSaleDate(Date saleDate) {
		this.saleDate = saleDate;
	}

	@Override
	public String toString() {
		return "Admin_Sale [rNum=" + rNum + ", saleNum=" + saleNum + ", prNum=" + prNum + ", saleMember=" + saleMember
				+ ", saleName=" + saleName + ", salePrice=" + salePrice + ", saleDate=" + saleDate + ", tradePrice="
				+ tradePrice + ", tradeEnd=" + tradeEnd + ", userId=" + userId + "]";
	}

	
}
