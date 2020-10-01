package com.LetsResell.myPage.model.dao;

import static com.LetsResell.template.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.myPage.model.vo.Bid;

public class MyPage_purchaseDao {
	
	private Properties prop = new Properties();
	
	public MyPage_purchaseDao() {
		
		String fileName = MyPage_purchaseDao.class.getResource("/sql/myPage/myPage-mapper2.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int purchaseListCount(Connection conn, int userNo) {
		
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("purchaseCount");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				listCount = rset.getInt("LISTCOUNT");
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}

}
