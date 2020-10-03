package com.LetsResell.admin.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.admin.model.vo.Admin_PageInfo;
import com.LetsResell.admin.model.vo.Admin_Product;
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
	
	public ArrayList<Admin_Sale> selectList(Connection conn, Admin_PageInfo pi){
		ArrayList<Admin_Sale> list = new ArrayList<>();
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
				list.add(new Admin_Sale(rset.getInt(1)
						,rset.getInt(2)
						,rset.getInt(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getInt(6)
						,rset.getDate(7))
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
	
	public int searchListCount(Connection conn, String filter, String search) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("saleCode")) {
			sql = prop.getProperty("searchListCount_saleCode");
		}else if(filter.equals("productCode")){
			sql = prop.getProperty("searchListCount_productCode");
		}else if(filter.equals("name")){
			sql = prop.getProperty("searchListCount_name");
		}else if(filter.equals("user")){
			sql = prop.getProperty("searchListCount_user");
		}
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + search + "%");
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
	
	public ArrayList<Admin_Sale> searchList(Connection conn, String filter, String search, Admin_PageInfo pi){
		ArrayList<Admin_Sale> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("saleCode")) {
			sql = prop.getProperty("searchList_saleCode");
		}else if(filter.equals("productCode")){
			sql = prop.getProperty("searchList_productCode");
		}else if(filter.equals("name")){
			sql = prop.getProperty("searchList_name");
		}else if(filter.equals("user")){
			sql = prop.getProperty("searchList_user");
		}
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setString(1, "%" + search + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Admin_Sale(rset.getInt(1)
						,rset.getInt(2)
						,rset.getInt(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getInt(6)
						,rset.getDate(7))
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
