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

import com.LetsResell.myPage.model.vo.Sale;

public class MyPageSalesDao {
	
	private Properties prop = new Properties();
	
	public MyPageSalesDao() {
		
		String fileName = MyPageSalesDao.class.getResource("/sql/myPage/myPage-mapper3.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Sale> salesListView(Connection conn, int userNo) {
		
		ArrayList<Sale> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSalesList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Sale s = new Sale();
				s.setSaleNo(rset.getInt("SALE_NO"));
				s.setSalePrice(rset.getInt("SALE_PRICE"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setSaleEnrollDate(rset.getDate("SALE_ENROLL_DATE"));
				s.setSaleCondition(rset.getString("SALE_CONDITION"));
				s.setSaleStatus(rset.getString("SALE_STATUS"));
				s.setSaleSize(rset.getString("SALE_SIZE"));
				s.setSaleCategory(rset.getString("SALE_CATEGORY"));
				s.setSalePeriod(rset.getString("SALE_PERIOD"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(s);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}
