package com.LetsResell.myPage.model.vo;

public class Account {
	
	private String memBankname;			// 은행명
	private String memAccountNum;		// 계좌번호
	private String memAccountholder;	// 예금주
	
	public Account() {}

	public Account(String memBankname, String memAccountNum, String memAccountholder) {
		super();
		this.memBankname = memBankname;
		this.memAccountNum = memAccountNum;
		this.memAccountholder = memAccountholder;
	}

	public String getMemBankname() {
		return memBankname;
	}

	public void setMemBankname(String memBankname) {
		this.memBankname = memBankname;
	}

	public String getMemAccountNum() {
		return memAccountNum;
	}

	public void setMemAccountNum(String memAccountNum) {
		this.memAccountNum = memAccountNum;
	}

	public String getMemAccountholder() {
		return memAccountholder;
	}

	public void setMemAccountholder(String memAccountholder) {
		this.memAccountholder = memAccountholder;
	}

	@Override
	public String toString() {
		return "Account [memBankname=" + memBankname + ", memAccountNum=" + memAccountNum + ", memAccountholder="
				+ memAccountholder + "]";
	}

}
	