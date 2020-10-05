package com.LetsResell.admin.model.vo;

import java.sql.Date;

public class Admin_Member {
	
	// field
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String phone;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	private String userSsn;
	private Date outDate;
	private int reportCount;
	private String blacklistStatus;
	private int rnum;
	
	//constructor
	public Admin_Member() {
		
	}
	
	public Admin_Member(int userNo, String userId, String userName, String phone, String userSsn) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userName = userName;
		this.phone = phone;
		this.userSsn = userSsn;
	}
	
	
	public Admin_Member(int userNo, String userId, String userPwd, String userName, String phone, Date enrollDate,
			Date modifyDate, String status, String userSsn, Date outDate, int reportCount, String blacklistStatus) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.userSsn = userSsn;
		this.outDate = outDate;
		this.reportCount = reportCount;
		this.blacklistStatus = blacklistStatus;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public String getBlacklistStatus() {
		return blacklistStatus;
	}
	public void setBlacklistStatus(String blacklistStatus) {
		this.blacklistStatus = blacklistStatus;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "Admin_Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName="
				+ userName + ", phone=" + phone + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ ", status=" + status + ", userSsn=" + userSsn + ", outDate=" + outDate + ", reportCount="
				+ reportCount + ", blacklistStatus=" + blacklistStatus + ", rnum=" + rnum + "]";
	}
	
}
