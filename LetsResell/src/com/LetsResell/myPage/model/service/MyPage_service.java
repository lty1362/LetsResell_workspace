package com.LetsResell.myPage.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.LetsResell.template.JDBCTemplate.*;

import com.LetsResell.member.model.vo.Member;
import com.LetsResell.myPage.model.dao.MyPage_dao;
import com.LetsResell.myPage.model.vo.Account;
import com.LetsResell.myPage.model.vo.Address;
import com.LetsResell.myPage.model.vo.Card;
import com.LetsResell.myPage.model.vo.Wishlist;
import com.LetsResell.myPage.model.vo.WishlistPageInfo;

public class MyPage_service {
	
	
	public Member selectMember(int userNo) {
		
		Connection conn = getConnection();
		
		Member member = new MyPage_dao().selectMember(conn, userNo);
		
		close(conn);
		
		return member;
	}
	
	/**
	 * 등록된 카드 조회
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public ArrayList<Card> selectCard(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Card> cardList = new MyPage_dao().selectCard(conn, userNo);
		
		close(conn);
		
		return cardList;
		
	}
	
	/**
	 * 등록된 주소 조회
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public ArrayList<Address> selectAddress(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Address> addressList = new MyPage_dao().selectAddress(conn, userNo);
		
		close(conn);
		
		return addressList;
		
	}
	
	/**
	 * 프로필 수정
	 * @param userNo	로그인된 회원의 번호
	 * @param name		이름
	 * @param userSsn	생년월일
	 * @return
	 */
	public int updateMember(int userNo, String name, String userSsn) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().updateMember(conn, userNo, name, userSsn);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;	
	}
	
	/**
	 * 비밀번호 변경
	 * @param userNo	로그인된 회원의 번호
	 * @param oldPwd	기존 비밀번호
	 * @param newPwd	새 비밀번호
	 * @return
	 */
	public int updatePwd(int userNo, String oldPwd, String newPwd) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().updatePwd(conn, userNo, oldPwd, newPwd);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	
	/**
	 * 회원 탈퇴
	 * @param userNo	로그인된 회원의 번호
	 * @param pwd		로그인된 회원의 비밀번호
	 * @return
	 */
	public int updateMemStatus(int userNo, String pwd) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().updateMemStatus(conn, userNo, pwd);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	/**
	 * 카드 등록
	 * @param userNo		로그인된 회원의 번호
	 * @param cardName		카드별칭
	 * @param cardNumber	카드번호
	 * @param cardValidate	유효기간
	 * @param cardMemBirth	생년월일
	 * @param cardPwd		카드비밀번호
	 * @return
	 */
	public int insertCard(int userNo, String cardName, String cardNumber, String cardValidate,
						  String cardMemBirth, int cardPwd) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().insertCard(conn, userNo, cardName, cardNumber, cardValidate, cardMemBirth, cardPwd);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	/**
	 * 배송지 등록
	 * @param userNo			로그인된 회원의 번호
	 * @param addressName		주소 별칭
	 * @param addressCode		우편 번호
	 * @param addressMain		도로명 주소
	 * @param addressDetail		상세 주소
	 * @param addressPhone		핸드폰 번호
	 * @param addressMessage	배송 메세지
	 * @param addressBasic		기본 배송지 등록 여부 ("Y"/"N")
	 * @return
	 */
	public int insertAddress(int userNo, String addressName, int addressCode, String addressMain,
			String addressDetail, String addressPhone, String addressMessage,
			String addressBasic) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().insertAddress(conn, userNo, addressName, addressCode, addressMain, addressDetail,
				addressPhone, addressMessage, addressBasic);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	/**
	 * 계좌 정보 등록
	 * @param userId			로그인된 아이디
	 * @param memBankname		은행명
	 * @param memAccountNum		계좌번호
	 * @param memAccountholder	예금주
	 * @return
	 */
	public int updateAccount(String userId, String memBankname, String memAccountNum, String memAccountholder) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().updateAccount(conn, userId, memBankname, memAccountNum, memAccountholder);

		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	/**
	 * 
	 * @param userNo		로그인된 회원의 번호
	 * @param cardNameArr	삭제하고자 하는 카드들
	 * @return
	 */
	public int deleteCard(int userNo, String[] cardNameArr) {
		
		int resultNumber = 0;				// 총 delete 처리된  수
		Connection conn = getConnection();
		
		for(int i=0; i<cardNameArr.length; i++) {
			
			String name = cardNameArr[i];
			
			int result = new MyPage_dao().deleteCard(conn, userNo, name);
			
			if(result > 0) {
				resultNumber++;
			}
		}
		
		if(resultNumber == cardNameArr.length) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return resultNumber;	
	}

	
	
	
	/**
	 * 회원 정보 수정일 업데이트
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public int updateModifyDate(int userNo) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().updateModifyDate(conn, userNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	/**
	 * 현재 총 찜 제품 갯수 조회
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public int selectWishlistCount(int userNo) {
		
		Connection conn = getConnection();
		
		int wishlistCount = new MyPage_dao().selectWishlistCount(conn, userNo);
		
		close(conn);
		
		return wishlistCount;
		
	}
	
	/**
	 * 위시리스트 조회
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public ArrayList<Wishlist> selectWishlist(int userNo, WishlistPageInfo wishlistPage, String order) {
		
		Connection conn = getConnection();
		
		ArrayList<Wishlist> wishlist = new MyPage_dao().selectWishlist(conn, userNo, wishlistPage, order);
		
		close(conn);
		
		return wishlist;
		
	}
	
	/**
	 * 위시리스트 삭제
	 * @param userNo	로그인된 회원의 번호
	 * @param checkArr	삭제하고자 하는 제품들
	 * @return
	 */
	public int deleteWishlist(int userNo, String[] checkArr) {
		
		int resultNumber = 0;				// 총 delete 처리된 제품의 수
		Connection conn = getConnection();
		
		for(int i=0; i<checkArr.length; i++) {
			
			String name = checkArr[i];
			
			int result = new MyPage_dao().deleteWishlist(conn, userNo, name);
			
			if(result > 0) {
				resultNumber++;
			}
		}
		
		if(resultNumber == checkArr.length) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return resultNumber;	
	}

}
