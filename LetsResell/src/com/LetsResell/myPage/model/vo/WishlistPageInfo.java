package com.LetsResell.myPage.model.vo;

public class WishlistPageInfo {
	
	private int wishlistCount;	// 현재 총 찜 제품 갯수
	private int currentPage;	// 현재 페이지 (요청한 페이지)
	private int pageLimit;		// 한 페이지 하단에 보여질 페이지 최대갯수
	private int wishlistLimit;	// 한 페이지내에 보여질 찜 제품 최대갯수
	
	private int maxPage;		// 전체 페이지들 중에서의 가장 마지막 페이지
	private int startPage;		// 현재 페이지의 하단에 보여질 페이징 바의 시작 수
	private int endPage;		// 현재 페이지의 하단에 보여질 페이징 바의 끝 수
	
	public WishlistPageInfo() {}

	public WishlistPageInfo(int wishlistCount, int currentPage, int pageLimit, int wishlistLimit, int maxPage,
			int startPage, int endPage) {
		super();
		this.wishlistCount = wishlistCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.wishlistLimit = wishlistLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public int getWishlistCount() {
		return wishlistCount;
	}

	public void setWishlistCount(int wishlistCount) {
		this.wishlistCount = wishlistCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getWishlistLimit() {
		return wishlistLimit;
	}

	public void setWishlistLimit(int wishlistLimit) {
		this.wishlistLimit = wishlistLimit;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "WishlistPageInfo [wishlistCount=" + wishlistCount + ", currentPage=" + currentPage + ", pageLimit="
				+ pageLimit + ", wishlistLimit=" + wishlistLimit + ", maxPage=" + maxPage + ", startPage=" + startPage
				+ ", endPage=" + endPage + "]";
	}
	

}
