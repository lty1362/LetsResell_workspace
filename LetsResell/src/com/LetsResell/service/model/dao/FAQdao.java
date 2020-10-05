package com.LetsResell.service.model.dao;

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

import com.LetsResell.service.model.vo.FAQ;
import com.LetsResell.service.model.vo.Notice;
import com.LetsResell.service.model.vo.PageInfo;

public class FAQdao {
	
	private Properties prop = new Properties();
	
	public FAQdao() {
		String fileName = FAQdao.class.getResource("/sql/service/FAQ-mapper.xml").getPath();
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
	
	public ArrayList<FAQ> selectList(Connection conn, PageInfo pi){
		ArrayList<FAQ> list = new ArrayList<>();
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
				list.add(new FAQ(rset.getInt(2),
						   rset.getString(3),
						   rset.getString(4),
						   rset.getString(5),
						   rset.getString(6)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int searchListCount(Connection conn, String category) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchListCount");
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
	
	public ArrayList<FAQ> searchList(Connection conn, String category, PageInfo pi){
		ArrayList<FAQ> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchList");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setString(1, category);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new FAQ(rset.getInt(2),
						   rset.getString(3),
						   rset.getString(4),
						   rset.getString(5),
						   rset.getString(6)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int deleteFAQ(Connection conn, String[] check) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteFAQ");
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
	
	public int updateFAQ(Connection conn, int fno, String title, String content) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateFAQ");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, fno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public FAQ detailFAQ(Connection conn, int fno) {
		FAQ faq = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailFAQ");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fno);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				faq = new FAQ(rset.getInt(1),
								rset.getString(2),
								rset.getString(3),
								rset.getString(4),
								rset.getString(5));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return faq;
	}
	
	public int insertFAQ(Connection conn, String title, String content, String category) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertFAQ");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
}
