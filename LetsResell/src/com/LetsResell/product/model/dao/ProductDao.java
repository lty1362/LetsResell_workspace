package com.LetsResell.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.product.model.vo.Product;
import static com.LetsResell.template.JDBCTemplate.*;

public class ProductDao {

	private Properties prop = new Properties();
	
	public ProductDao() {
		String fileName = ProductDao.class.getResource("/sql/product/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listCount;
	}
	
	public ArrayList<Product> searchProduct(Connection conn, String search) {
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchProduct");
		String searchText = "%" + search + "%";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchText);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Product p = new Product();
				
				p.setPrNo(rset.getInt("PR_NO"));
				p.setPrModel(rset.getString("PR_MODEL"));
				p.setPrName(rset.getString("PR_NAME"));
				p.setPrReleaseDate(rset.getDate("PR_RELEASE_DATE"));
				p.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(p);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
}
