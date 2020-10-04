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

import com.LetsResell.common.member.vo.Filter;
import com.LetsResell.common.member.vo.PageInfo;
import com.LetsResell.product.model.vo.Product;
import com.LetsResell.product.model.vo.Sale;

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
	
	public int selectSearchListCount(Connection conn, String search) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSearchListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "%" + search + "%");
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Product> searchProduct(Connection conn, String search, PageInfo pi) {
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setString(1, "%" + search + "%");			
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Product p = new Product();
				
				p.setPrNo(rset.getInt("PR_NO"));
				p.setPrModel(rset.getString("PR_MODEL"));
				p.setPrName(rset.getString("PR_NAME"));
				p.setPrReleasePrice(rset.getInt("PR_RELEASE_PRICE"));
				p.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int searchFilterCount(Connection conn, Filter filter) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
	
		String sql = prop.getProperty("searchFilterCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, filter.getCategory());
			pstmt.setString(2, filter.getBrand());
			pstmt.setString(3, filter.getColor());
			pstmt.setInt(4, filter.getPrice());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Product> filterSearchProduct(Connection conn, Filter filter, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("filterSearchProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setString(1, filter.getCategory());
			pstmt.setString(2, filter.getBrand());
			pstmt.setString(3, filter.getColor());
			pstmt.setInt(4, filter.getPrice());
			pstmt.setInt(5, startRow);
			pstmt.setInt(6, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Product p = new Product();
				
				p.setPrNo(rset.getInt("PR_NO"));
				p.setPrModel(rset.getString("PR_MODEL"));
				p.setPrName(rset.getString("PR_NAME"));
				p.setPrBrand(rset.getString("PR_BRAND"));
				p.setPrReleasePrice(rset.getInt("PR_RELEASE_PRICE"));
				p.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Product> filterSearchProductPriceAsc(Connection conn, Filter filter, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("filterSearchProductPriceAsc");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setString(1, filter.getCategory());
			pstmt.setString(2, filter.getBrand());
			pstmt.setString(3, filter.getColor());
			pstmt.setInt(4, filter.getPrice());
			pstmt.setInt(5, startRow);
			pstmt.setInt(6, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Product p = new Product();
				
				p.setPrNo(rset.getInt("PR_NO"));
				p.setPrModel(rset.getString("PR_MODEL"));
				p.setPrName(rset.getString("PR_NAME"));
				p.setPrReleasePrice(rset.getInt("PR_RELEASE_PRICE"));
				p.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public ArrayList<Product> filterSearchProductPriceDesc(Connection conn, Filter filter, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("filterSearchProductPriceDesc");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setString(1, filter.getCategory());
			pstmt.setString(2, filter.getBrand());
			pstmt.setString(3, filter.getColor());
			pstmt.setInt(4, filter.getPrice());
			pstmt.setInt(5, startRow);
			pstmt.setInt(6, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Product p = new Product();
				
				p.setPrNo(rset.getInt("PR_NO"));
				p.setPrModel(rset.getString("PR_MODEL"));
				p.setPrName(rset.getString("PR_NAME"));
				p.setPrReleasePrice(rset.getInt("PR_RELEASE_PRICE"));
				p.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int selectSaleListCount(Connection conn, int prNo) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSaleListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, prNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Sale> selectSaleList(Connection conn, int prNo, PageInfo pi) {
		ArrayList<Sale> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSaleList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getBoardLimit() +1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, prNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Sale s = new Sale();
				
				s.setSaleNo(rset.getInt("SALE_NO"));
				s.setPrNo(rset.getInt("PR_NO"));
				s.setMemUserNo(rset.getInt("MEM_USER_NO"));
				s.setSalePrice(rset.getInt("SALE_PRICE"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setSaleSize(rset.getInt("SALE_SIZE"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(s);
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
