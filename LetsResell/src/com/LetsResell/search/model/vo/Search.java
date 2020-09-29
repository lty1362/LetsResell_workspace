package com.LetsResell.search.model.vo;

public class Search {
	private String searhImg;
	private String searchName;
	private String searchBrand;
	private String searchUrl;
	private String status;
	
	public Search() {}


	


	public Search(String searhImg, String searchName, String searchBrand, String searchUrl, String status) {
		super();
		this.searhImg = searhImg;
		this.searchName = searchName;
		this.searchBrand = searchBrand;
		this.searchUrl = searchUrl;
		this.status = status;
	}


	public String getStatus() {
		return status;
	}





	public void setStatus(String status) {
		this.status = status;
	}





	public String getSearchUrl() {
		return searchUrl;
	}





	public void setSearchUrl(String searchUrl) {
		this.searchUrl = searchUrl;
	}





	public String getSearhImg() {
		return searhImg;
	}


	public void setSearhImg(String searhImg) {
		this.searhImg = searhImg;
	}


	public String getSearchName() {
		return searchName;
	}


	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}


	public String getSearchBrand() {
		return searchBrand;
	}


	public void setSearchBrand(String searchBrand) {
		this.searchBrand = searchBrand;
	}





	@Override
	public String toString() {
		return "Search [searhImg=" + searhImg + ", searchName=" + searchName + ", searchBrand=" + searchBrand
				+ ", searchUrl=" + searchUrl + ", status=" + status + "]";
	}





	

	
	
	
}
