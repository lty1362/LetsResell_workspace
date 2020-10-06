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

import com.LetsResell.admin.model.vo.Admin_Image;
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
						,rset.getDate(11)
						,rset.getDate(12)
						,rset.getInt(13)
						,rset.getInt(14)
						,rset.getString(15))
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
						,rset.getDate(11)
						,rset.getDate(12)
						,rset.getInt(13)
						,rset.getInt(14)
						,rset.getString(15))
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
		if(filter.equals("code")) {
			sql = prop.getProperty("searchListCount_code");
		}else if(filter.equals("name")){
			sql = prop.getProperty("searchListCount_name");
		}else if(filter.equals("brand")){
			sql = prop.getProperty("searchListCount_brand");
		}else if(filter.equals("color")){
			sql = prop.getProperty("searchListCount_color");
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
	
	public int searchListCount(Connection conn, String filter, String search, String category) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("code")) {
			sql = prop.getProperty("searchListCount_codeCategory");
		}else if(filter.equals("name")){
			sql = prop.getProperty("searchListCount_nameCategory");
		}else if(filter.equals("brand")){
			sql = prop.getProperty("searchListCount_brandCategory");
		}else if(filter.equals("color")){
			sql = prop.getProperty("searchListCount_colorCategory");
		}
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + search + "%");
			pstmt.setString(2, category);
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
	
	public ArrayList<Admin_Product> searchList(Connection conn, String filter, String search, Admin_PageInfo pi){
		ArrayList<Admin_Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("code")) {
			sql = prop.getProperty("searchList_code");
		}else if(filter.equals("name")){
			sql = prop.getProperty("searchList_name");
		}else if(filter.equals("brand")){
			sql = prop.getProperty("searchList_brand");
		}else if(filter.equals("color")){
			sql = prop.getProperty("searchList_color");
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
				list.add(new Admin_Product(rset.getInt(2)
						,rset.getString(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getString(6)
						,rset.getString(7)
						,rset.getString(8)
						,rset.getString(9)
						,rset.getString(10)
						,rset.getDate(11)
						,rset.getDate(12)
						,rset.getInt(13)
						,rset.getInt(14)
						,rset.getString(15))
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
	
	public ArrayList<Admin_Product> searchList(Connection conn, String filter, String search, String category, 
			Admin_PageInfo pi){
		ArrayList<Admin_Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("code")) {
			sql = prop.getProperty("searchList_codeCategory");
		}else if(filter.equals("name")){
			sql = prop.getProperty("searchList_nameCategory");
		}else if(filter.equals("brand")){
			sql = prop.getProperty("searchList_brandCategory");
		}else if(filter.equals("color")){
			sql = prop.getProperty("searchList_colorCategory");
		}
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setString(1, "%" + search + "%");
			pstmt.setString(2, category);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
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
						,rset.getDate(11)
						,rset.getDate(12)
						,rset.getInt(13)
						,rset.getInt(14)
						,rset.getString(15))
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
	
	public int deleteProduct(Connection conn, String[] check) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteProduct");
		try {
			for(int i = 0 ; i < check.length ; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(check[i]));
				result = pstmt.executeUpdate();
				if(i != check.length-1 && result == 1) {
					result = 0;
				}
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertProduct(Connection conn, Admin_Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProduct");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getPRmodel());
			pstmt.setString(2, p.getPRname());
			pstmt.setString(3, p.getPRcategory());
			pstmt.setString(4, p.getPRbrand());
			pstmt.setString(5, p.getPRsize());
			pstmt.setString(6, p.getPRcolor());
			pstmt.setString(7, p.getPRreviewYoutube());
			pstmt.setString(8, p.getPRreviewDetail());
			pstmt.setDate(9, p.getPRreleaseDate());
			pstmt.setInt(10, p.getPRreleasePrice());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertProductImage(Connection conn, ArrayList<Admin_Image> list) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProductImage");
		try {
			for(Admin_Image at : list) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, at.getProductImgUrl());
				pstmt.setString(2, at.getProductImageOriginName());
				pstmt.setString(3, at.getProductImageChangeName());
				pstmt.setString(4, at.getProductDetailNo());
				pstmt.setInt(5, at.getFileLevel());
				result = pstmt.executeUpdate();
				if(result == 0) {
					return 0;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	public int updateProductMainImage(Connection conn, ArrayList<Admin_Image> list, int pno) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateProductMainImage");
		try {
			pstmt = conn.prepareStatement(sql);
			if(!list.isEmpty()) {
				pstmt.setString(1, list.get(0).getProductImageOriginName());
				pstmt.setString(2, list.get(0).getProductImageChangeName());
				pstmt.setInt(3, pno);
				result = pstmt.executeUpdate();
			} else {
				result = 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertProductDetailImage(Connection conn, Admin_Image file, int pno) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProductDetailImage");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			pstmt.setString(2, file.getProductImgUrl());
			pstmt.setString(3, file.getProductImageOriginName());
			pstmt.setString(4, file.getProductImageChangeName());
			pstmt.setString(5, file.getProductDetailNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateProductDetailImage(Connection conn, Admin_Image file2, int pno) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateProductDetailImage");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, file2.getProductImageOriginName());
			pstmt.setString(2, file2.getProductImageChangeName());
			pstmt.setInt(3, pno);
			pstmt.setString(4, file2.getProductDetailNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public Admin_Product selectDetail(Connection conn, int pno) {
		Admin_Product product = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetail");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				product = new Admin_Product(rset.getInt(1)
						,rset.getString(2)
						,rset.getString(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getString(6)
						,rset.getString(7)
						,rset.getString(8)
						,rset.getString(9)
						,rset.getDate(10)
						,rset.getDate(11)
						,rset.getInt(12)
						,rset.getInt(13)
						,rset.getString(14));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return product;
	}
	
	public int updateProduct(Connection conn, Admin_Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateProduct");
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, p.getPRmodel());
				pstmt.setString(2, p.getPRname());
				pstmt.setString(3, p.getPRcategory());
				pstmt.setString(4, p.getPRbrand());
				pstmt.setString(5, p.getPRsize());
				pstmt.setString(6, p.getPRcolor());
				pstmt.setString(7, p.getPRreviewYoutube());
				pstmt.setString(8, p.getPRreviewDetail());
				pstmt.setDate(9, p.getPRreleaseDate());
				pstmt.setInt(10, p.getPRreleasePrice());
				pstmt.setInt(11, p.getPRno());
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		return result;
	}
	
	public ArrayList<Admin_Image> selectImage(Connection conn, int pno) {
		ArrayList<Admin_Image> image = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectImage");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Admin_Image img = new Admin_Image(rset.getInt(1),
						rset.getInt(2),
						rset.getString(3),
						rset.getString(4),
						rset.getString(5),
						rset.getString(6),
						rset.getInt(7));
				image.add(img);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return image;
	}
	
	public int test(Connection conn, Admin_Image file, int pno) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("test");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, file.getProductDetailNo());
			pstmt.setInt(2, pno);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	
	
}
