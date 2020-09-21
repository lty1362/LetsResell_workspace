// 선경_20200920_v1.1
// 계좌 등록 기능 추가 (미완성)
// 선경_20200921_v1.2
// 카드 등록 기능 추가 (미완성)
// 프로필 수정 기능 추가 (미완성)
package com.LetsResell.myPage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
	 * 
	 * @param conn
	 * @param name		이름
	 * @param userSsn	생년월일
	 * @return
	 */
	public int updateMember(Connection conn, String name, String userSsn) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, userSsn);
			
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
	public int insertCard(Connection conn, String cardName, String cardNumber, String cardValidate, String cardMemBirth, int cardPwd) {
		// insert문
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertCard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cardName);
			pstmt.setString(2, cardNumber);
			pstmt.setString(3, cardValidate);
			pstmt.setString(4, cardMemBirth);
			pstmt.setInt(5, cardPwd);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateAccount(Connection conn, String memBankname, String memAccountNum, String memAccountholder) {
		
		// update문
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateAccount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memBankname);
			pstmt.setString(2, memAccountNum);
			pstmt.setString(3, memAccountholder);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}		
		return result;
	}

}
