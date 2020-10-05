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
	private String reportPastDeal;
	private Date reportEnrollDate;
	private String reportStatus;
	private String userId;
	
	// constructor
	public Report() {
		
	}
	
	
	
	public Report(int reportNo, int saleNo, String userId, String reportCategory, String reportTitle, String reportContent,
			String reportPastDeal, Date reportEnrollDate, String reportStatus) {
		super();
		this.reportNo = reportNo;
		this.saleNo = saleNo;
		this.reportCategory = reportCategory;
		this.reportTitle = reportTitle;
		this.reportContent = reportContent;
		this.reportPastDeal = reportPastDeal;
		this.reportEnrollDate = reportEnrollDate;
		this.reportStatus = reportStatus;
		this.userId = userId;
	}



	public Report(int saleNo, String reportTitle, String reportCategory, String reportPastDeal, String reportContent) {
		super();
		this.saleNo = saleNo;
		this.reportTitle = reportTitle;
		this.reportCategory = reportCategory;
		this.reportPastDeal = reportPastDeal;
		this.reportContent = reportContent;
	}
	
	public Report(String reportTitle, String reportCategory, String reportPastDeal, String reportContent,
			int reportNo) {
		super();
		this.reportTitle = reportTitle;
		this.reportCategory = reportCategory;
		this.reportPastDeal = reportPastDeal;
		this.reportContent = reportContent;
		this.reportNo = reportNo;
	}

	public Report(String reportTitle, String reportCategory, int saleNo, String reportContent) {
		super();
		this.reportTitle = reportTitle;
		this.reportCategory = reportCategory;
		this.saleNo = saleNo;
		this.reportContent = reportContent;
	}
	public Report(String reportTitle, String reportCategory, int saleNo, String reportContent,
			int reportNo) {
		super();
		this.reportNo = reportNo;
		this.reportTitle = reportTitle;
		this.reportCategory = reportCategory;
		this.saleNo = saleNo;
		this.reportContent = reportContent;
	}
	public Report(int reportNo, int saleNo, int reportWriter, String reportCategory, String reportTitle,
			String reportContent, String reportPastDeal, Date reportEnrollDate, String reportStatus) {
		super();
		this.reportNo = reportNo;
		this.saleNo = saleNo;
		this.reportWriter = reportWriter;
		this.reportCategory = reportCategory;
		this.reportTitle = reportTitle;
		this.reportContent = reportContent;
		this.reportPastDeal = reportPastDeal;
		this.reportEnrollDate = reportEnrollDate;
		this.reportStatus = reportStatus;
	}
	// method
	
	public int getReportNo() {
		return reportNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getReportPastDeal() {
		return reportPastDeal;
	}
	public void setReportPastDeal(String reportPastDeal) {
		this.reportPastDeal = reportPastDeal;
	}
	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", saleNo=" + saleNo + ", reportWriter=" + reportWriter
				+ ", reportCategory=" + reportCategory + ", reportTitle=" + reportTitle + ", reportContent="
				+ reportContent + ", reportPastDeal=" + reportPastDeal + ", reportEnrollDate=" + reportEnrollDate
				+ ", reportStatus=" + reportStatus + ", userId=" + userId + "]";
	}
	
}
