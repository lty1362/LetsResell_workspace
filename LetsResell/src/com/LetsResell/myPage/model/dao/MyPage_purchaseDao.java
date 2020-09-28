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
		
		String fileName = MyPage_purchaseDao.class.getResource("sql/MyPage/myPage-mapper2.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Bid> selectPurchaseList(Connection conn, Bid b) {
		
		ArrayList<Bid> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListPurchaseList");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, b.getMemUserNo());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Bid B = new Bid();
				B.setBidNo(rset.getInt("BID_NO"));
				B.setBidPrice(rset.getInt("BID_PRICE"));
				B.setBidStatus(rset.getString("BID_STATUS"));
				B.setSaleName(rset.getString("SALE_NAME"));
				B.setSaleCondition(rset.getString("SALE_CONDITION"));
				B.setSaleSize(rset.getString("SALE_SIZE"));
				B.setSaleCategory(rset.getString("SALE_CATEGORY"));
				B.setPrImage(rset.getString("PR_IMAGE"));
				
				list.add(B);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(conn);
		}
		
		return list;
	}

}
