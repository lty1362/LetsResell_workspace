package com.LetsResell.myPage.model.vo;

public class Address {
	
	private int addressNo;			// 회원 주소 등록 번호
	private int memUserNo;			// 회원 번호
	private int addressCode;		// 우편 번호
	private String addressMain;		// 도로명 주소
	private String addressDetail;	// 상세 주소
	private String addressPhone;	// 핸드폰 번호
	private String addressName;		// 주소 별칭
	private String addressBasic;	// 기본 배송지 등록 여부 ("Y"/"N")
	private String addressMessage;	// 배송 메세지
	
	public Address() {}
	
	// selectAddress
	public Address(int addressCode, String addressMain, String addressDetail, String addressPhone, String addressName,
			String addressMessage) {
		super();
		this.addressCode = addressCode;
		this.addressMain = addressMain;
		this.addressDetail = addressDetail;
		this.addressPhone = addressPhone;
		this.addressName = addressName;
		this.addressMessage = addressMessage;
	}

	public Address(int addressNo, int memUserNo, int addressCode, String addressMain, String addressDetail,
			String addressPhone, String addressName, String addressBasic, String addressMessage) {
		super();
		this.addressNo = addressNo;
		this.memUserNo = memUserNo;
		this.addressCode = addressCode;
		this.addressMain = addressMain;
		this.addressDetail = addressDetail;
		this.addressPhone = addressPhone;
		this.addressName = addressName;
		this.addressBasic = addressBasic;
		this.addressMessage = addressMessage;
	}

	public int getAddressNo() {
		return addressNo;
	}

	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}

	public int getMemUserNo() {
		return memUserNo;
	}

	public void setMemUserNo(int memUserNo) {
		this.memUserNo = memUserNo;
	}

	public int getAddressCode() {
		return addressCode;
	}

	public void setAddressCode(int addressCode) {
		this.addressCode = addressCode;
	}

	public String getAddressMain() {
		return addressMain;
	}

	public void setAddressMain(String addressMain) {
		this.addressMain = addressMain;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getAddressPhone() {
		return addressPhone;
	}

	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}

	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}

	public String getAddressBasic() {
		return addressBasic;
	}

	public void setAddressBasic(String addressBasic) {
		this.addressBasic = addressBasic;
	}

	public String getAddressMessage() {
		return addressMessage;
	}

	public void setAddressMessage(String addressMessage) {
		this.addressMessage = addressMessage;
	}

	@Override
	public String toString() {
		return "Address [addressNo=" + addressNo + ", memUserNo=" + memUserNo + ", addressCode=" + addressCode
				+ ", addressMain=" + addressMain + ", addressDetail=" + addressDetail + ", addressPhone=" + addressPhone
				+ ", addressName=" + addressName + ", addressBasic=" + addressBasic + ", addressMessage="
				+ addressMessage + "]";
	}

}
