package com.LetsResell.product.model.vo;

import java.sql.Date;

public class ViewBidding {
	
	private int priBidNo;		
	private int saleNo;
	private int memUserNo;
	private int bidPrice;
	private Date bidDate;
	private int addressNo;
	private String bidStatus;
	
	public ViewBidding() {
		
	}

	public ViewBidding(int priBidNo, int saleNo, int memUserNo, int bidPrice, Date bidDate, int addressNo,
			String bidStatus) {
		super();
		this.priBidNo = priBidNo;
		this.saleNo = saleNo;
		this.memUserNo = memUserNo;
		this.bidPrice = bidPrice;
		this.bidDate = bidDate;
		this.addressNo = addressNo;
		this.bidStatus = bidStatus;
	}

	public int getPriBidNo() {
		return priBidNo;
	}

	public void setPriBidNo(int priBidNo) {
		this.priBidNo = priBidNo;
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
		return "ViewBidding [priBidNo=" + priBidNo + ", saleNo=" + saleNo + ", memUserNo=" + memUserNo + ", bidPrice="
				+ bidPrice + ", bidDate=" + bidDate + ", addressNo=" + addressNo + ", bidStatus=" + bidStatus + "]";
	}
	
	

}
