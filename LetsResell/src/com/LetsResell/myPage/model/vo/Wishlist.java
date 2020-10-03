package com.LetsResell.myPage.model.vo;

import java.sql.Date;

public class Wishlist {
	
	private int wishlistPcode;		// 제품 코드
	private int wishlistMcode;		// 회원 번호
	private Date wishlistAddDate;	// 관심상품 등록일
	private String prName;			// 제품명
	
	public Wishlist() {}


	// selectWishlist
	public Wishlist(Date wishlistAddDate, String prName) {
		super();
		this.wishlistAddDate = wishlistAddDate;
		this.prName = prName;
	}
	
	public Wishlist(int wishlistPcode, int wishlistMcode, Date wishlistAddDate) {
		super();
		this.wishlistPcode = wishlistPcode;
		this.wishlistMcode = wishlistMcode;
		this.wishlistAddDate = wishlistAddDate;
	}

	public int getWishlistPcode() {
		return wishlistPcode;
	}

	public void setWishlistPcode(int wishlistPcode) {
		this.wishlistPcode = wishlistPcode;
	}

	public int getWishlistMcode() {
		return wishlistMcode;
	}

	public void setWishlistMcode(int wishlistMcode) {
		this.wishlistMcode = wishlistMcode;
	}

	public Date getWishlistAddDate() {
		return wishlistAddDate;
	}

	public void setWishlistAddDate(Date wishlistAddDate) {
		this.wishlistAddDate = wishlistAddDate;
	}

	public String getPrName() {
		return prName;
	}

	public void setPrName(String prName) {
		this.prName = prName;
	}

	@Override
	public String toString() {
		return "Wishlist [wishlistPcode=" + wishlistPcode + ", wishlistMcode=" + wishlistMcode + ", wishlistAddDate="
				+ wishlistAddDate + ", prName=" + prName + "]";
	}

}
