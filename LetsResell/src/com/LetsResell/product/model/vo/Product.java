package com.LetsResell.product.model.vo;

import java.sql.Date;

public class Product {
	
	private int prNo;					// 제품 번호
	private String prModel;				// 제품 모델 명
	private String prName;				// 제품 이름
	private String prCategory;			// 제품 카테고리
	private String prBrand;				// 제품 브랜드
	private String prSize;				// 제품 사이즈
	private String prColor;				// 제품 색상
	private String prReviewYoutube;		// 제품 유튜브 리뷰
	private String prReviewDetail;		// 제품 상세 설명
	private Date prEnrollDate;			// 제품 등록일
	private Date prReleaseDate;			// 제품 발매일
	private int prReleasePrice;			// 제품 발매가
	private int prHits;					// 제품 조회수
	private String prStatus;			// 제품 상태
	private String titleImg;			// 제품 대표 이미지
	
	public Product() {}

	public Product(int prNo, String prModel, String prName, String prCategory, String prBrand, String prSize,
			String prColor, String prReviewYoutube, String prReviewDetail, Date prEnrollDate, Date prReleaseDate,
			int prReleasePrice, int prHits, String prStatus, String titleImg) {
		super();
		this.prNo = prNo;
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
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "Product [prNo=" + prNo + ", prModel=" + prModel + ", prName=" + prName + ", prCategory=" + prCategory
				+ ", prBrand=" + prBrand + ", prSize=" + prSize + ", prColor=" + prColor + ", prReviewYoutube="
				+ prReviewYoutube + ", prReviewDetail=" + prReviewDetail + ", prEnrollDate=" + prEnrollDate
				+ ", prReleaseDate=" + prReleaseDate + ", prReleasePrice=" + prReleasePrice + ", prHits=" + prHits
				+ ", prStatus=" + prStatus + ", titleImg=" + titleImg + "]";
	}

	public int getPrNo() {
		return prNo;
	}

	public void setPrNo(int prNo) {
		this.prNo = prNo;
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

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}
	
}
