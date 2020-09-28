package com.LetsResell.myPage.model.vo;

import java.sql.Date;

public class Member {
	
	private int userNo;				//회원번호
	private String userId;			//계정명
	private String userPwd;			//비밀번호
	private String userName;		//이름
	private String phone;			//전화번호
	private Date enrollDate;		//회원가입일
	private Date modifyDate;		//정보수정일
	private String status;			//회원상태
	private String userSsn;			//생년월일
	private Date outDate; 			//탈퇴일
	private int reportCount;		//신고횟수
	private String blackList;		//정비여부
	
	
	public Member() {
		
	}


	public Member(int userNo, String userId, String userPwd, String userName, String phone, Date enrollDate,
			Date modifyDate, String status, String userSsn, Date outDate, int reportCount, String blackList) {
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
		this.blackList = blackList;
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


	public String getBlackList() {
		return blackList;
	}


	public void setBlackList(String blackList) {
		this.blackList = blackList;
	}


	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", phone=" + phone + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", status="
				+ status + ", userSsn=" + userSsn + ", outDate=" + outDate + ", reportCount=" + reportCount
				+ ", blackList=" + blackList + "]";
	}
	
}
