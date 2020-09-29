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

	public ArrayList<Bid> selectPurchaseList(Connection conn, int userNo) {
		
		ArrayList<Bid> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPurchaseList");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Bid bid = new Bid();
				bid.setBidNo(rset.getInt("BID_NO"));
				bid.setBidPrice(rset.getInt("BID_PRICE"));
				bid.setBidStatus(rset.getString("BID_STATUS"));
				bid.setSaleName(rset.getString("SALE_NAME"));
				bid.setSaleCondition(rset.getString("SALE_CONDITION"));
				bid.setSaleSize(rset.getString("SALE_SIZE"));
				bid.setSaleCategory(rset.getString("SALE_CATEGORY"));
				bid.setPrImage(rset.getString("PR_IMAGE"));
				
				list.add(bid);
				
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
