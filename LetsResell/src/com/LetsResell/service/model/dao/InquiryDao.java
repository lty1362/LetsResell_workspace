package com.LetsResell.service.model.dao;

import static com.LetsResell.template.JDBCTemplate.close;

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

import com.LetsResell.service.model.vo.FAQ;
import com.LetsResell.service.model.vo.Inquiry;
import com.LetsResell.service.model.vo.PageInfo;

public class InquiryDao {
	
	private Properties prop = new Properties();
	
	public InquiryDao() {
		String fileName = InquiryDao.class.getResource("/sql/service/inquiry-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn, int writer) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, writer);
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
	
	public ArrayList<Inquiry> selectList(Connection conn, int writer, PageInfo pi){
		ArrayList<Inquiry> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setInt(1, writer);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Inquiry(rset.getInt(2),
						   rset.getInt(3),
						   rset.getString(4),
						   rset.getString(5),
						   rset.getString(6),
						   rset.getString(7),
						   rset.getDate(8),
						   rset.getString(9),
						   rset.getString(10),
						   rset.getDate(11)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Inquiry selectDetail(Connection conn, int ino, int writer) {
		Inquiry list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetail");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, writer);
			pstmt.setInt(2, ino);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				list = new Inquiry(rset.getInt(2),
						   rset.getInt(3),
						   rset.getString(4),
						   rset.getString(5),
						   rset.getString(6),
						   rset.getString(7),
						   rset.getDate(8),
						   rset.getString(9),
						   rset.getString(10),
						   rset.getDate(11));
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
