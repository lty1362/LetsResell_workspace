package com.LetsResell.admin.model.vo;

public class Admin_Image {

	// field
	private int productImgNo;
	private int productNo;
	private String productImgUrl;
	private String productImageOriginName;
	private String productImageChangeName;
	private String productDetailNo;
	private int fileLevel;
	
	// constructor
	public Admin_Image() {
		
	}
	
	public Admin_Image(int productImgNo, int productNo, String productImgUrl, String productImageOriginName,
			String productImageChangeName, String productDetailNo, int fileLevel) {
		super();
		this.productImgNo = productImgNo;
		this.productNo = productNo;
		this.productImgUrl = productImgUrl;
		this.productImageOriginName = productImageOriginName;
		this.productImageChangeName = productImageChangeName;
		this.productDetailNo = productDetailNo;
		this.fileLevel = fileLevel;
	}

	public Admin_Image(String productImageOriginName, String productImageChangeName, String productImgUrl, 
			int fileLevel) {
		super();
		this.productImgUrl = productImgUrl;
		this.productImageOriginName = productImageOriginName;
		this.productImageChangeName = productImageChangeName;
		this.fileLevel = fileLevel;
	}

	public Admin_Image(int productImgNo, int productNo, String productImgUrl, String productImageOriginName,
			String productImageChangeName, int fileLevel) {
		super();
		this.productImgNo = productImgNo;
		this.productNo = productNo;
		this.productImgUrl = productImgUrl;
		this.productImageOriginName = productImageOriginName;
		this.productImageChangeName = productImageChangeName;
		this.fileLevel = fileLevel;
	}
	
	// method
	
	public int getProductImgNo() {
		return productImgNo;
	}
	public String getProductDetailNo() {
		return productDetailNo;
	}

	public void setProductDetailNo(String productDetailNo) {
		this.productDetailNo = productDetailNo;
	}

	public void setProductImgNo(int productImgNo) {
		this.productImgNo = productImgNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductImgUrl() {
		return productImgUrl;
	}
	public void setProductImgUrl(String productImgUrl) {
		this.productImgUrl = productImgUrl;
	}
	public String getProductImageOriginName() {
		return productImageOriginName;
	}
	public void setProductImageOriginName(String productImageOriginName) {
		this.productImageOriginName = productImageOriginName;
	}
	public String getProductImageChangeName() {
		return productImageChangeName;
	}
	public void setProductImageChangeName(String productImageChangeName) {
		this.productImageChangeName = productImageChangeName;
	}
	public int getFileLevel() {
		return fileLevel;
	}
	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}

	@Override
	public String toString() {
		return "Admin_Image [productImgNo=" + productImgNo + ", productNo=" + productNo + ", productImgUrl="
				+ productImgUrl + ", productImageOriginName=" + productImageOriginName + ", productImageChangeName="
				+ productImageChangeName + ", productDetailNo=" + productDetailNo + ", fileLevel=" + fileLevel + "]";
	}
	
}
