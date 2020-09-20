package com.LetsResell.service.model.vo;

import java.sql.Date;

public class Notice {
	
	// field
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date enrollDate;
	private String status;
	
	// constructor
	public Notice() {
		
	}
	public Notice(int noticeNo, String noticeTitle, String noticeContent, Date enrollDate, String status) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.enrollDate = enrollDate;
		this.status = status;
	}
	
	// method
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", enrollDate=" + enrollDate + ", status=" + status + "]";
	}
	
}
