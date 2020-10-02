package com.LetsResell.service.model.vo;

import java.sql.Date;

public class Inquiry {
	
	// field
	private int inquiryNo;
	private int inquiryWriter;
	private String inquiryCategoryBig;
	private String inquiryCategorySmall;
	private String inquiryTitle;
	private String inquiryContent;
	private Date inquiryEnrollDate;
	private String inquiryStatus;
	private String inquiryAnswer;
	private Date inquiryAnswerDate;
	private String userId;
	
	// constructor
	public Inquiry() {
		
	}
	
	
	public Inquiry(int inquiryNo, String userId, String inquiryCategoryBig, String inquiryCategorySmall, String inquiryTitle,
			String inquiryContent, Date inquiryEnrollDate, String inquiryStatus, String inquiryAnswer,
			Date inquiryAnswerDate) {
		super();
		this.inquiryNo = inquiryNo;
		this.userId = userId;
		this.inquiryCategoryBig = inquiryCategoryBig;
		this.inquiryCategorySmall = inquiryCategorySmall;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryEnrollDate = inquiryEnrollDate;
		this.inquiryStatus = inquiryStatus;
		this.inquiryAnswer = inquiryAnswer;
		this.inquiryAnswerDate = inquiryAnswerDate;
	}


	public Inquiry(int inquiryNo, String inquiryTitle, String inquiryCategoryBig, String inquiryCategorySmall, 
			String inquiryContent) {
		super();
		this.inquiryNo = inquiryNo;
		this.inquiryTitle = inquiryTitle;
		this.inquiryCategoryBig = inquiryCategoryBig;
		this.inquiryCategorySmall = inquiryCategorySmall;
		this.inquiryContent = inquiryContent;
	}
	public Inquiry(int inquiryNo, int inquiryWriter, String inquiryCategoryBig, String inquiryCategorySmall,
			String inquiryTitle, String inquiryContent, Date inquiryEnrollDate, String inquiryStatus,
			String inquiryAnswer, Date inquiryAnswerDate) {
		super();
		this.inquiryNo = inquiryNo;
		this.inquiryWriter = inquiryWriter;
		this.inquiryCategoryBig = inquiryCategoryBig;
		this.inquiryCategorySmall = inquiryCategorySmall;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryEnrollDate = inquiryEnrollDate;
		this.inquiryStatus = inquiryStatus;
		this.inquiryAnswer = inquiryAnswer;
		this.inquiryAnswerDate = inquiryAnswerDate;
	}
	
	// method
	
	public int getInquiryNo() {
		return inquiryNo;
	}
	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public void setInquiryNo(int inquiryNo) {
		this.inquiryNo = inquiryNo;
	}
	public int getInquiryWriter() {
		return inquiryWriter;
	}
	public void setInquiryWriter(int inquiryWriter) {
		this.inquiryWriter = inquiryWriter;
	}
	public String getInquiryCategoryBig() {
		return inquiryCategoryBig;
	}
	public void setInquiryCategoryBig(String inquiryCategoryBig) {
		this.inquiryCategoryBig = inquiryCategoryBig;
	}
	public String getInquiryCategorySmall() {
		return inquiryCategorySmall;
	}
	public void setInquiryCategorySmall(String inquiryCategorySmall) {
		this.inquiryCategorySmall = inquiryCategorySmall;
	}
	public String getInquiryTitle() {
		return inquiryTitle;
	}
	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}
	public String getInquiryContent() {
		return inquiryContent;
	}
	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}
	public Date getInquiryEnrollDate() {
		return inquiryEnrollDate;
	}
	public void setInquiryEnrollDate(Date inquiryEnrollDate) {
		this.inquiryEnrollDate = inquiryEnrollDate;
	}
	public String getInquiryStatus() {
		return inquiryStatus;
	}
	public void setInquiryStatus(String inquiryStatus) {
		this.inquiryStatus = inquiryStatus;
	}
	public String getInquiryAnswer() {
		return inquiryAnswer;
	}
	public void setInquiryAnswer(String inquiryAnswer) {
		this.inquiryAnswer = inquiryAnswer;
	}
	public Date getInquiryAnswerDate() {
		return inquiryAnswerDate;
	}
	public void setInquiryAnswerDate(Date inquiryAnswerDate) {
		this.inquiryAnswerDate = inquiryAnswerDate;
	}


	@Override
	public String toString() {
		return "Inquiry [inquiryNo=" + inquiryNo + ", inquiryWriter=" + inquiryWriter + ", inquiryCategoryBig="
				+ inquiryCategoryBig + ", inquiryCategorySmall=" + inquiryCategorySmall + ", inquiryTitle="
				+ inquiryTitle + ", inquiryContent=" + inquiryContent + ", inquiryEnrollDate=" + inquiryEnrollDate
				+ ", inquiryStatus=" + inquiryStatus + ", inquiryAnswer=" + inquiryAnswer + ", inquiryAnswerDate="
				+ inquiryAnswerDate + ", userId=" + userId + "]";
	}
	
	
	
}
