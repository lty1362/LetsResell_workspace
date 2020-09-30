package com.LetsResell.product.model.vo;

import java.sql.Date;

public class Product {
	
	private int prNo;
	private String prImage;
	private String prModel;
	private String prName;
	private String prCategory;
	private String prBrand;
	private String prSize;
	private String prColor;
	private String prReviewYoutube;
	private String prReviewDetail;
	private Date prEnrollDate;
	private Date prReleaseDate;
	private int prReleasePrice;
	private int prHits;
	private String prStatus;
	
	public Product() {}

	public Product(int prNo, String prImage, String prModel, String prName, String prCategory, String prBrand,
			String prSize, String prColor, String prReviewYoutube, String prReviewDetail, Date prEnrollDate,
			Date prReleaseDate, int prReleasePrice, int prHits, String prStatus) {
		super();
		this.prNo = prNo;
		this.prImage = prImage;
		this.prModel = prModel;
		this.prName = prName;
		this.prCategory = prCategory;
		this.prBrand = prBrand;
		this.prSize = prSize;
		this.prColor = prColor;
		this.prReviewYoutube = prReviewYoutube;
		this.prReviewDetail = prReviewDetail;
		this.prEnrollDate = prEnrollDate;
		this.prReleaseDate = prReleaseDate;
		this.prReleasePrice = prReleasePrice;
		this.prHits = prHits;
		this.prStatus = prStatus;
	}

	public int getPrNo() {
		return prNo;
	}

	public void setPrNo(int prNo) {
		this.prNo = prNo;
	}

	public String getPrImage() {
		return prImage;
	}

	public void setPrImage(String prImage) {
		this.prImage = prImage;
	}

	public String getPrModel() {
		return prModel;
	}

	public void setPrModel(String prModel) {
		this.prModel = prModel;
	}

	public String getPrName() {
		return prName;
	}

	public void setPrName(String prName) {
		this.prName = prName;
	}

	public String getPrCategory() {
		return prCategory;
	}

	public void setPrCategory(String prCategory) {
		this.prCategory = prCategory;
	}

	public String getPrBrand() {
		return prBrand;
	}

	public void setPrBrand(String prBrand) {
		this.prBrand = prBrand;
	}

	public String getPrSize() {
		return prSize;
	}

	public void setPrSize(String prSize) {
		this.prSize = prSize;
	}

	public String getPrColor() {
		return prColor;
	}

	public void setPrColor(String prColor) {
		this.prColor = prColor;
	}

	public String getPrReviewYoutube() {
		return prReviewYoutube;
	}

	public void setPrReviewYoutube(String prReviewYoutube) {
		this.prReviewYoutube = prReviewYoutube;
	}

	public String getPrReviewDetail() {
		return prReviewDetail;
	}

	public void setPrReviewDetail(String prReviewDetail) {
		this.prReviewDetail = prReviewDetail;
	}

	public Date getPrEnrollDate() {
		return prEnrollDate;
	}

	public void setPrEnrollDate(Date prEnrollDate) {
		this.prEnrollDate = prEnrollDate;
	}

	public Date getPrReleaseDate() {
		return prReleaseDate;
	}

	public void setPrReleaseDate(Date prReleaseDate) {
		this.prReleaseDate = prReleaseDate;
	}

	public int getPrReleasePrice() {
		return prReleasePrice;
	}

	public void setPrReleasePrice(int prReleasePrice) {
		this.prReleasePrice = prReleasePrice;
	}

	public int getPrHits() {
		return prHits;
	}

	public void setPrHits(int prHits) {
		this.prHits = prHits;
	}

	public String getPrStatus() {
		return prStatus;
	}

	public void setPrStatus(String prStatus) {
		this.prStatus = prStatus;
	}

	@Override
	public String toString() {
		return "Product [prNo=" + prNo + ", prImage=" + prImage + ", prModel=" + prModel + ", prName=" + prName
				+ ", prCategory=" + prCategory + ", prBrand=" + prBrand + ", prSize=" + prSize + ", prColor=" + prColor
				+ ", prReviewYoutube=" + prReviewYoutube + ", prReviewDetail=" + prReviewDetail + ", prEnrollDate="
				+ prEnrollDate + ", prReleaseDate=" + prReleaseDate + ", prReleasePrice=" + prReleasePrice + ", prHits="
				+ prHits + ", prStatus=" + prStatus + "]";
	}
	
	
}
