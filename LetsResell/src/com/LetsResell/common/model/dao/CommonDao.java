package com.LetsResell.common.model.dao;

import static com.LetsResell.template.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.common.member.vo.Event;
import com.LetsResell.common.member.vo.PageInfo;
import com.LetsResell.product.model.dao.ProductDao;
import com.LetsResell.product.model.vo.Product;
import com.LetsResell.product.model.vo.Sale;

public class CommonDao {

	private Properties prop = new Properties();
	
	public CommonDao() {
		String fileName = ProductDao.class.getResource("/sql/common/common-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Event> selectEventList(Connection conn) {
		ArrayList<Event> eventList = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectEventList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				Event e = new Event();
				
				e.setEventNo(rset.getInt("EVENT_NO"));
				e.setEventImage(rset.getString("EVENT_IMAGE"));
				e.setEventDetail(rset.getString("EVENT_DETAIL"));
				e.setEventStatus(rset.getString("EVENT_STATUS"));
				
				eventList.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return eventList;
	}
	
	public ArrayList<Product> selectPopularList(Connection conn) {
		ArrayList<Product> popularList = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPopularList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				Product p = new Product();
				
				p.setPrNo(rset.getInt("PR_NO"));
				p.setPrName(rset.getString("PR_NAME"));
				p.setTitleImg(rset.getString("TITLEIMG"));
				
				popularList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return popularList;
	}
	
	public int selectProductCount(Connection conn) {
		int listCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductCount");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Product> selectProductList(Connection conn, PageInfo productPi) {
		ArrayList<Product> productList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (productPi.getCurrentPage() -1) * productPi.getBoardLimit() +1;
			int endRow = startRow + productPi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Product p = new Product();
				
				p.setPrNo(rset.getInt("PR_NO"));
				p.setPrName(rset.getString("PR_NAME"));
				p.setTitleImg(rset.getString("TITLEIMG"));
				
				productList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return productList;
	}
	
	public int selectSaleCount(Connection conn) {
		int listCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSaleCount");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Sale> selectSaleList(Connection conn, PageInfo salePi) {
		ArrayList<Sale> saleList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSaleList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (salePi.getCurrentPage() -1) * salePi.getBoardLimit() +1;
			int endRow = startRow + salePi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Sale s = new Sale();
				
				s.setPrNo(rset.getInt("PR_NO"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				saleList.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return saleList;
	}
	
	public int selectOldCount(Connection conn) {
		int listCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOldCount");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Sale> selectOldList(Connection conn, PageInfo oldPi) {
		ArrayList<Sale> oldList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOldList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (oldPi.getCurrentPage() -1) * oldPi.getBoardLimit() +1;
			int endRow = startRow + oldPi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Sale s = new Sale();
				
				s.setPrNo(rset.getInt("PR_NO"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				oldList.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return oldList;
	}
}
