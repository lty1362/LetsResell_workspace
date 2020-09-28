package com.LetsResell.member.model.vo;

import java.sql.Date;

public class Member {
	
	 private int userNo;
	 private String userId;
	 private String userPwd;
	 private String name;
	 private String phone;
	 private Date enrollDate;
	 private Date modifyDate;
	 private String status;
	 private String userSsn;
	 private Date outDate;
	 private int reportCount;
	 private String blackListStatus;
	
	 

	 public Member() {}
	 
	 

	public Member(String userId, String userPwd, String name, String phone,String userSsn ) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.name = name;
		this.phone = phone;
		this.userSsn = userSsn;
		
		
	}



	public Member(int userNo, String userId, String userPwd, String name, String phone, Date enrollDate,
			Date modifyDate, String status, String userSsn, Date outDate, int reportCount, String blackListStatus) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.name = name;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.userSsn = userSsn;
		this.outDate = outDate;
		this.reportCount = reportCount;
		this.blackListStatus = blackListStatus;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getUserPwd() {
		return userPwd;
	}



	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public Date getEnrollDate() {
		return enrollDate;
	}



	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}



	public Date getModifyDate() {
		return modifyDate;
	}



	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getUserSsn() {
		return userSsn;
	}



	public void setUserSsn(String userSsn) {
		this.userSsn = userSsn;
	}



	public Date getOutDate() {
		return outDate;
	}



	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}



	public int getReportCount() {
		return reportCount;
	}



	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}



	public String getBlackListStatus() {
		return blackListStatus;
	}



	public void setBlackListStatus(String blackListStatus) {
		this.blackListStatus = blackListStatus;
	}



	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", name=" + name
				+ ", phone=" + phone + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", status="
				+ status + ", userSsn=" + userSsn + ", outDate=" + outDate + ", reportCount=" + reportCount
				+ ", blackListStatus=" + blackListStatus + "]";
	}
}


	
	 


