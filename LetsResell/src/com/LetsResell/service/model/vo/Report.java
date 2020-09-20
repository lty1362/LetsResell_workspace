package com.LetsResell.service.model.vo;

import java.sql.Date;

public class Report {
	
	// field
	private int reportNo;
	private int saleNo;
	private int reportWriter;
	private String reportCategory;
	private String reportTitle;
	private String reportContent;
	private Date reportEnrollDate;
	private String reportStatus;
	
	// constructor
	public Report() {
		
	}
	public Report(int reportNo, int saleNo, int reportWriter, String reportCategory, String reportTitle,
			String reportContent, Date reportEnrollDate, String reportStatus) {
		super();
		this.reportNo = reportNo;
		this.saleNo = saleNo;
		this.reportWriter = reportWriter;
		this.reportCategory = reportCategory;
		this.reportTitle = reportTitle;
		this.reportContent = reportContent;
		this.reportEnrollDate = reportEnrollDate;
		this.reportStatus = reportStatus;
	}
	
	// method
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public int getSaleNo() {
		return saleNo;
	}
	public void setSaleNo(int saleNo) {
		this.saleNo = saleNo;
	}
	public int getReportWriter() {
		return reportWriter;
	}
	public void setReportWriter(int reportWriter) {
		this.reportWriter = reportWriter;
	}
	public String getReportCategory() {
		return reportCategory;
	}
	public void setReportCategory(String reportCategory) {
		this.reportCategory = reportCategory;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	public Date getReportEnrollDate() {
		return reportEnrollDate;
	}
	public void setReportEnrollDate(Date reportEnrollDate) {
		this.reportEnrollDate = reportEnrollDate;
	}
	public String getReportStatus() {
		return reportStatus;
	}
	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}
	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", saleNo=" + saleNo + ", reportWriter=" + reportWriter
				+ ", reportCategory=" + reportCategory + ", reportTitle=" + reportTitle + ", reportContent="
				+ reportContent + ", reportEnrollDate=" + reportEnrollDate + ", reportStatus=" + reportStatus + "]";
	} 
	
	
	
}
