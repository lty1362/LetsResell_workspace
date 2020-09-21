// 선경_20200920_v1.1
// 계좌 등록 기능 추가 (미완성)
// 선경_20200921_v1.2
// 카드 등록 기능 추가 (미완성)
// 프로필 수정 기능 추가 (미완성)
// 선경_20200921_v1.3
// 계좌 등록 method (완성)
package com.LetsResell.myPage.model.service;

import java.sql.Connection;

import static com.LetsResell.template.JDBCTemplate.*;

import com.LetsResell.myPage.model.dao.MyPage_dao;
import com.LetsResell.myPage.model.vo.Account;

public class MyPage_service {
	
	/**
	 * 
	 * @param name		이름
	 * @param userSsn	생년월일
	 * @return
	 */
	public int updateMember(String name, String userSsn) {
		
		//System.out.println("service_updateMember 실행됨");
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().updateMember(conn, name, userSsn);
		
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
	 * @param cardName		카드별칭
	 * @param cardNumber	카드번호
	 * @param cardValidate	유효기간
	 * @param cardMemBirth	생년월일
	 * @param cardPwd		카드비밀번호
	 * @return
	 */
	public int insertCard(String cardName, String cardNumber, String cardValidate, String cardMemBirth, int cardPwd) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().insertCard(conn, cardName, cardNumber, cardValidate, cardMemBirth, cardPwd);
		
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

}
