package com.LetsResell.myPage.model.vo;

public class Card {
	
	private int cardNo;				// 회원 카드 등록 번호
	private int memUserNo;			// 회원 번호
	private String cardName;		// 카드 별칭
	private String cardNumber;		// 카드 번호
	private String cardValidate;	// 유효 기간
	private String cardMemBirth;	// 생년월일
	private int cardPwd;			// 카드 비밀번호
	private int cardinfoNo;			// 카드 정보 코드
	
	public Card() {}
	
	// selectCard
	public Card(String cardName, String cardNumber) {
		super();
		this.cardName = cardName;
		this.cardNumber = cardNumber;
	}

	public Card(int cardNo, int memUserNo, String cardName, String cardNumber, String cardValidate, String cardMemBirth,
			int cardPwd, int cardinfoNo) {
		super();
		this.cardNo = cardNo;
		this.memUserNo = memUserNo;
		this.cardName = cardName;
		this.cardNumber = cardNumber;
		this.cardValidate = cardValidate;
		this.cardMemBirth = cardMemBirth;
		this.cardPwd = cardPwd;
		this.cardinfoNo = cardinfoNo;
	}
	
	// insertCard 하는 경우 사용
	public Card(String cardName, String cardNumber, String cardValidate, String cardMemBirth, int cardPwd) {
		super();
		this.cardName = cardName;
		this.cardNumber = cardNumber;
		this.cardValidate = cardValidate;
		this.cardMemBirth = cardMemBirth;
		this.cardPwd = cardPwd;
	}
	
	public int getCardNo() {
		return cardNo;
	}

	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}

	public int getMemUserNo() {
		return memUserNo;
	}

	public void setMemUserNo(int memUserNo) {
		this.memUserNo = memUserNo;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getCardValidate() {
		return cardValidate;
	}

	public void setCardValidate(String cardValidate) {
		this.cardValidate = cardValidate;
	}

	public String getCardMemBirth() {
		return cardMemBirth;
	}

	public void setCardMemBirth(String cardMemBirth) {
		this.cardMemBirth = cardMemBirth;
	}

	public int getCardPwd() {
		return cardPwd;
	}

	public void setCardPwd(int cardPwd) {
		this.cardPwd = cardPwd;
	}

	public int getCardinfoNo() {
		return cardinfoNo;
	}

	public void setCardinfoNo(int cardinfoNo) {
		this.cardinfoNo = cardinfoNo;
	}

	@Override
	public String toString() {
		return "Card [cardNo=" + cardNo + ", memUserNo=" + memUserNo + ", cardName=" + cardName + ", cardNumber="
				+ cardNumber + ", cardValidate=" + cardValidate + ", cardMemBirth=" + cardMemBirth + ", cardPwd="
				+ cardPwd + ", cardinfoNo=" + cardinfoNo + "]";
	}

}
