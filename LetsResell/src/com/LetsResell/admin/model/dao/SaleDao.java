package com.LetsResell.admin.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.admin.model.vo.Admin_Sale;
import static com.LetsResell.template.JDBCTemplate.*;


public class SaleDao {
	
	private Properties prop = new Properties();
	
	public SaleDao() {
		String fileName = SaleDao.class.getResource("/sql/admin/admin_sale-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Admin_Sale> selectMemberDetail(Connection conn, int mno){
		ArrayList<Admin_Sale> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberDetail");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Admin_Sale(rset.getInt(1),
										rset.getInt(2),
										rset.getString(3),
										rset.getInt(4),
										rset.getDate(5)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
}
