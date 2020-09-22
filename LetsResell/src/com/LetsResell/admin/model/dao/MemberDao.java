package com.LetsResell.admin.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

import static com.LetsResell.template.JDBCTemplate.*;
import com.LetsResell.admin.model.vo.*;
import com.LetsResell.service.model.vo.Notice;
import com.LetsResell.service.model.vo.PageInfo;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/admin/admin_member-mapper.xml").getPath();
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
	
	public ArrayList<Admin_Member> selectList(Connection conn, Admin_PageInfo pi){
		ArrayList<Admin_Member> list = new ArrayList<>();
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
				list.add(new Admin_Member(rset.getInt(2)
						,rset.getString(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getString(6)
						,rset.getDate(7)
						,rset.getDate(8)
						,rset.getString(9)
						,rset.getString(10)
						,rset.getDate(11)
						,rset.getInt(12)
						,rset.getString(13)
						,rset.getString(14)
						,rset.getString(15)
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
	
	public int searchListCount(Connection conn, String filter, String search) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("userCode")) {
			sql = prop.getProperty("searchListCount_code");
		}else if(filter.equals("userName")){
			sql = prop.getProperty("searchListCount_name");
		}else if(filter.equals("phone")) {
			sql = prop.getProperty("searchListCount_phone");
		}else if(filter.equals("email")) {
			sql = prop.getProperty("searchListCount_email");
		}else {
			sql = prop.getProperty("searchListCount_address");
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
	
	public ArrayList<Admin_Member> searchList(Connection conn, String filter, String search, Admin_PageInfo pi){
		ArrayList<Admin_Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		if(filter.equals("userCode")) {
			sql = prop.getProperty("searchList_code");
		}else if(filter.equals("userName")){
			sql = prop.getProperty("searchList_name");
		}else if(filter.equals("phone")) {
			sql = prop.getProperty("searchList_phone");
		}else if(filter.equals("email")) {
			sql = prop.getProperty("searchList_email");
		}else {
			sql = prop.getProperty("searchList_address");
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
				list.add(new Admin_Member(rset.getInt(2)
						,rset.getString(3)
						,rset.getString(4)
						,rset.getString(5)
						,rset.getString(6)
						,rset.getDate(7)
						,rset.getDate(8)
						,rset.getString(9)
						,rset.getString(10)
						,rset.getDate(11)
						,rset.getInt(12)
						,rset.getString(13)
						,rset.getString(14)
						,rset.getString(15)
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
