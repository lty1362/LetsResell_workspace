package com.LetsResell.admin.model.dao;

import static com.LetsResell.template.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.admin.model.vo.Admin_PageInfo;
import com.LetsResell.admin.model.vo.Admin_Product;

public class ProductDao {
	
private Properties prop = new Properties();
	
	public ProductDao() {
		String fileName = ProductDao.class.getResource("/sql/admin/admin_product-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn) {
		int result = 0;
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				result = rset.getInt("LISTCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return result;
	}
	
	public ArrayList<Admin_Product> selectList(Connection conn, Admin_PageInfo pi){
		ArrayList<Admin_Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Admin_Product(rset.getInt(2)
						,rset.getString(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getString(6)
						,rset.getString(7)
						,rset.getString(8)
						,rset.getString(9)
						,rset.getString(10)
						,rset.getString(11)
						,rset.getDate(12)
						,rset.getDate(13)
						,rset.getInt(14)
						,rset.getInt(15)
						,rset.getString(16))
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int selectCategoryCount(Connection conn, String category) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCategoryCount");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt("LISTCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Admin_Product> selectCategory(Connection conn, String category, Admin_PageInfo pi){
		ArrayList<Admin_Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCategory");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setString(1, category);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Admin_Product(rset.getInt(2)
						,rset.getString(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getString(6)
						,rset.getString(7)
						,rset.getString(8)
						,rset.getString(9)
						,rset.getString(10)
						,rset.getString(11)
						,rset.getDate(12)
						,rset.getDate(13)
						,rset.getInt(14)
						,rset.getInt(15)
						,rset.getString(16))
						);
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
