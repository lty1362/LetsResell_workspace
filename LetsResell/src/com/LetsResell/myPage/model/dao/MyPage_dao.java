// 선경_20200920_v1.1
// 계좌 등록 기능 추가 (미완성)
// 선경_20200921_v1.2
// 카드 등록 기능 추가 (미완성)
// 프로필 수정 기능 추가 (미완성)
// 선경_20200921_v1.3
// 계좌 등록 method (완성)
// 선경_20200925_v1.4
// 배송지, 카드, 프로필 수정 기능 수정(미완성)
package com.LetsResell.myPage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import static com.LetsResell.template.JDBCTemplate.*;
import com.LetsResell.myPage.model.vo.Account;

public class MyPage_dao {
	
	private Properties prop = new Properties();
	
	public MyPage_dao() {
		
		String fileName = MyPage_dao.class.getResource("/sql/myPage/myPage-mapper1.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}

	/**
	 * 프로필 수정
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @param name		이름
	 * @param userSsn	생년월일
	 * @return
	 */
	public int updateMember(Connection conn, int userNo, String name, String userSsn) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, userSsn);
			pstmt.setInt(3, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return(result);
	}
	
	/**
	 * 카드 등록
	 * @param conn			
	 * @param cardName		카드별칭
	 * @param cardNumber	카드번호
	 * @param cardValidate	유효기간
	 * @param cardMemBirth	생년월일
	 * @param cardPwd		카드비밀번호
	 * @return
	 */
	public int insertCard(Connection conn, int userNo, String cardName, String cardNumber, String cardValidate,
					      String cardMemBirth, int cardPwd) {
		// insert문
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertCard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setString(2, cardName);
			pstmt.setString(3, cardNumber);
			pstmt.setString(4, cardValidate);
			pstmt.setString(5, cardMemBirth);
			pstmt.setInt(6, cardPwd);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * 계좌 정보 등록
	 * @param conn
	 * @param userId			로그인된 아이디
	 * @param memBankname		은행명
	 * @param memAccountNum		계좌번호
	 * @param memAccountholder	예금주
	 * @return
	 */
	public int updateAccount(Connection conn, String userId, String memBankname, String memAccountNum, String memAccountholder) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateAccount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memBankname);
			pstmt.setString(2, memAccountNum);
			pstmt.setString(3, memAccountholder);
			pstmt.setString(4, userId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}		
		return result;
	}
	
	public int insertAddress(Connection conn, int userNo, String addressName, int addressCode, String addressMain,
							 String addressDetail, String addressPhone, String addressMessage,
							 String addressBasic) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertAddress");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, addressCode);
			pstmt.setString(3, addressMain);
			pstmt.setString(4, addressDetail);
			pstmt.setString(5, addressPhone);
			pstmt.setString(6, addressName);
			pstmt.setString(7, addressBasic);
			pstmt.setString(8, addressMessage);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public int updateModifyDate(Connection conn, int userNo) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateModifyDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	

}
