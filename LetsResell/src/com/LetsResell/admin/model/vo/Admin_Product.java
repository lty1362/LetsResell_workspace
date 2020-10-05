package com.LetsResell.admin.model.vo;

import java.sql.Date;

public class Admin_Product {
	
	// field
	private int PRno;
	private String PRmodel;
	private String PRname;
	private String PRcategory;
	private String PRbrand;
	private String PRsize;
	private String PRcolor;
	private String PRreviewYoutube;
	private String PRreviewDetail;
	private Date PRenrollDate;
	private Date PRreleaseDate;
	private int PRreleasePrice;
	private int PRhits;
	private String PRstatus;
	
	
	// constructor
	public Admin_Product() {
		
	}
	
	public Admin_Product(String pRmodel, String pRname, String pRcategory, String pRbrand,
			String pRsize, String pRcolor, String pRreviewYoutube, String pRreviewDetail) {
		super();
		PRmodel = pRmodel;
		PRname = pRname;
		PRcategory = pRcategory;
		PRbrand = pRbrand;
		PRsize = pRsize;
		PRcolor = pRcolor;
		PRreviewYoutube = pRreviewYoutube;
		PRreviewDetail = pRreviewDetail;
	}
	
	

	public Admin_Product(String pRmodel, String pRname, String pRcategory, String pRbrand,
			String pRsize, String pRcolor, String pRreviewYoutube, String pRreviewDetail, Date pRreleaseDate,
			int pRreleasePrice) {
		super();
		PRmodel = pRmodel;
		PRname = pRname;
		PRcategory = pRcategory;
		PRbrand = pRbrand;
		PRsize = pRsize;
		PRcolor = pRcolor;
		PRreviewYoutube = pRreviewYoutube;
		PRreviewDetail = pRreviewDetail;
		PRreleaseDate = pRreleaseDate;
		PRreleasePrice = pRreleasePrice;
	}

	public Admin_Product(int pRno, String pRmodel, String pRname, String pRcategory, String pRbrand,
			String pRsize, String pRcolor, String pRreviewYoutube, String pRreviewDetail, Date pRenrollDate,
			Date pRreleaseDate, int pRreleasePrice, int pRhits, String pRstatus) {
		super();
		PRno = pRno;
		PRmodel = pRmodel;
		PRname = pRname;
		PRcategory = pRcategory;
		PRbrand = pRbrand;
		PRsize = pRsize;
		PRcolor = pRcolor;
		PRreviewYoutube = pRreviewYoutube;
		PRreviewDetail = pRreviewDetail;
		PRenrollDate = pRenrollDate;
		PRreleaseDate = pRreleaseDate;
		PRreleasePrice = pRreleasePrice;
		PRhits = pRhits;
		PRstatus = pRstatus;
	}
	
	// method
	public int getPRno() {
		return PRno;
	}
	public void setPRno(int pRno) {
		PRno = pRno;
	}
	public String getPRmodel() {
		return PRmodel;
	}
	public void setPRmodel(String pRmodel) {
		PRmodel = pRmodel;
	}
	public String getPRname() {
		return PRname;
	}
	public void setPRname(String pRname) {
		PRname = pRname;
	}
	public String getPRcategory() {
		return PRcategory;
	}
	public void setPRcategory(String pRcategory) {
		PRcategory = pRcategory;
	}
	public String getPRbrand() {
		return PRbrand;
	}
	public void setPRbrand(String pRbrand) {
		PRbrand = pRbrand;
	}
	public String getPRsize() {
		return PRsize;
	}
	public void setPRsize(String pRsize) {
		PRsize = pRsize;
	}
	public String getPRcolor() {
		return PRcolor;
	}
	public void setPRcolor(String pRcolor) {
		PRcolor = pRcolor;
	}
	public String getPRreviewYoutube() {
		return PRreviewYoutube;
	}
	public void setPRreviewYoutube(String pRreviewYoutube) {
		PRreviewYoutube = pRreviewYoutube;
	}
	public String getPRreviewDetail() {
		return PRreviewDetail;
	}
	public void setPRreviewDetail(String pRreviewDetail) {
		PRreviewDetail = pRreviewDetail;
	}
	public Date getPRenrollDate() {
		return PRenrollDate;
	}
	public void setPRenrollDate(Date pRenrollDate) {
		PRenrollDate = pRenrollDate;
	}
	public Date getPRreleaseDate() {
		return PRreleaseDate;
	}
	public void setPRreleaseDate(Date pRreleaseDate) {
		PRreleaseDate = pRreleaseDate;
	}
	public int getPRreleasePrice() {
		return PRreleasePrice;
	}
	public void setPRreleasePrice(int pRreleasePrice) {
		PRreleasePrice = pRreleasePrice;
	}
	public int getPRhits() {
		return PRhits;
	}
	public void setPRhits(int pRhits) {
		PRhits = pRhits;
	}
	public String getPRstatus() {
		return PRstatus;
	}
	public void setPRstatus(String pRstatus) {
		PRstatus = pRstatus;
	}
	@Override
	public String toString() {
		return "Admin_Product [PRno=" + PRno + ", PRimage=" + ", PRmodel=" + PRmodel + ", PRname=" + PRname
				+ ", PRcategory=" + PRcategory + ", PRbrand=" + PRbrand + ", PRsize=" + PRsize + ", PRcolor=" + PRcolor
				+ ", PRreviewYoutube=" + PRreviewYoutube + ", PRreviewDetail=" + PRreviewDetail + ", PRenrollDate="
				+ PRenrollDate + ", PRreleaseDate=" + PRreleaseDate + ", PRreleasePrice=" + PRreleasePrice + ", PRhits="
				+ PRhits + ", PRstatus=" + PRstatus + "]";
	}
	
	
	
}
