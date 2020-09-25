package com.LetsResell.admin.model.vo;

import java.sql.Date;

public class Admin_Sale {
	
	// field
	private int rNum;
	private int PRnum;
	private String saleName;
	private int salePrice;
	private Date saleDate;
	
	// constructor
	public Admin_Sale(){
		
	}
	public Admin_Sale(int rNum, int pRnum, String saleName, int salePrice, Date saleDate) {
		super();
		this.rNum = rNum;
		PRnum = pRnum;
		this.saleName = saleName;
		this.salePrice = salePrice;
		this.saleDate = saleDate;
	}
	
	// method
	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public int getPRnum() {
		return PRnum;
	}
	public void setPRnum(int pRnum) {
		PRnum = pRnum;
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
		return "Admin_Sale [rNum=" + rNum + ", PRnum=" + PRnum + ", saleName=" + saleName + ", salePrice=" + salePrice
				+ ", saleDate=" + saleDate + "]";
	}
	
}
