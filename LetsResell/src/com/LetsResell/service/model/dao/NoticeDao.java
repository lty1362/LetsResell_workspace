package com.LetsResell.service.model.dao;

import static com.LetsResell.template.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.service.model.vo.Notice;
import com.LetsResell.service.model.vo.PageInfo;

public class NoticeDao {
	
	private Properties prop = new Properties();
	
	public NoticeDao() {
		String fileName = NoticeDao.class.getResource("/sql/service/notice-mapper.xml").getPath();
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
	
	public ArrayList<Notice> selectList(Connection conn, PageInfo pi){
		ArrayList<Notice> list = new ArrayList<>();
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
				list.add(new Notice(rset.getInt("NOTICE_NO"),
						   rset.getString("NOTICE_TITLE"),
						   rset.getString("NOTICE_CONTENT"),
						   rset.getDate("NOTICE_ENROLL_DATE"),
						   rset.getString("NOTICE_STATUS")));
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
		if(filter.equals("title")) {
			sql = prop.getProperty("searchListCount_title");
		}else {
			sql = prop.getProperty("searchListCount_content");
		}
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
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
	
	public ArrayList<Notice> searchList(Connection conn, String filter, String search, PageInfo pi){
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("title")) {
			sql = prop.getProperty("searchList_title");
		}else {
			sql = prop.getProperty("searchList_content");
		}
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setString(1, "%"+search+"%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Notice(rset.getInt("NOTICE_NO"),
						   rset.getString("NOTICE_TITLE"),
						   rset.getString("NOTICE_CONTENT"),
						   rset.getDate("NOTICE_ENROLL_DATE"),
						   rset.getString("NOTICE_STATUS")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Notice selectDetail(Connection conn, int noticeNo) {
		Notice detail = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetail");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				detail = new Notice(
							rset.getInt(1),
							rset.getString(2),
							rset.getString(3),
							rset.getDate(4),
							rset.getString(5)
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return detail;
		
	}
	
	public int noticeDelete(Connection conn, String[] check) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteNotice");
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
	
	public int insertNotice(Connection conn, String title, String content) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public int updateNotice(Connection conn, int nno, String title, String content) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, nno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	
}
