// 선경_20200920_v1.1
// 계좌 등록 기능 추가 (미완성)
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
