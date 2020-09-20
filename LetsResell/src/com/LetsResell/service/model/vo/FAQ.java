package com.LetsResell.service.model.vo;

public class FAQ {
	
	// field
	private int FAQno;
	private String FAQcategory;
	private String FAQtitle;
	private String FAQcontent;
	private String FAQstatus;
	
	// constructor
	public FAQ() {
		
	}
	public FAQ(int fAQno, String fAQcategory, String fAQtitle, String fAQcontent, String fAQstatus) {
		super();
		FAQno = fAQno;
		FAQcategory = fAQcategory;
		FAQtitle = fAQtitle;
		FAQcontent = fAQcontent;
		FAQstatus = fAQstatus;
	}
	
	// method
	public int getFAQno() {
		return FAQno;
	}
	public void setFAQno(int fAQno) {
		FAQno = fAQno;
	}
	public String getFAQcategory() {
		return FAQcategory;
	}
	public void setFAQcategory(String fAQcategory) {
		FAQcategory = fAQcategory;
	}
	public String getFAQtitle() {
		return FAQtitle;
	}
	public void setFAQtitle(String fAQtitle) {
		FAQtitle = fAQtitle;
	}
	public String getFAQcontent() {
		return FAQcontent;
	}
	public void setFAQcontent(String fAQcontent) {
		FAQcontent = fAQcontent;
	}
	public String getFAQstatus() {
		return FAQstatus;
	}
	public void setFAQstatus(String fAQstatus) {
		FAQstatus = fAQstatus;
	}
	@Override
	public String toString() {
		return "FAQ [FAQno=" + FAQno + ", FAQcategory=" + FAQcategory + ", FAQtitle=" + FAQtitle + ", FAQcontent="
				+ FAQcontent + ", FAQstatus=" + FAQstatus + "]";
	}
	
	
}
