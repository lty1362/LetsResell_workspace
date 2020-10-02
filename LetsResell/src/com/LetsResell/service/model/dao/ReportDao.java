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

import com.LetsResell.service.model.vo.Inquiry;
import com.LetsResell.service.model.vo.PageInfo;
import com.LetsResell.service.model.vo.Report;

public class ReportDao {
	
	private Properties prop = new Properties();
	
	public ReportDao() {
		String fileName = ReportDao.class.getResource("/sql/service/report-mapper.xml").getPath();
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
	
	public ArrayList<Report> selectList(Connection conn, int writer, PageInfo pi){
		ArrayList<Report> list = new ArrayList<>();
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
				list.add(new Report(rset.getInt(2),
						   rset.getInt(3),
						   rset.getInt(4),
						   rset.getString(5),
						   rset.getString(6),
						   rset.getString(7),
						   rset.getString(8),
						   rset.getDate(9),
						   rset.getString(10)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Report selectDetail(Connection conn, int ino, int writer) {
		Report list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetail");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, writer);
			pstmt.setInt(2, ino);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				list = new Report(rset.getInt(2),
						   rset.getInt(3),
						   rset.getInt(4),
						   rset.getString(5),
						   rset.getString(6),
						   rset.getString(7),
						   rset.getString(8),
						   rset.getDate(9),
						   rset.getString(10));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int updateReport(Connection conn, Report update) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateReport");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, update.getReportTitle());
			pstmt.setString(2, update.getReportCategory());
			pstmt.setString(3, update.getReportPastDeal());
			pstmt.setString(4, update.getReportContent());
			pstmt.setInt(5, update.getReportNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertReport(Connection conn, int writer, Report insert) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReport");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, insert.getSaleNo());
			pstmt.setInt(2, writer);
			pstmt.setString(3, insert.getReportCategory());
			pstmt.setString(4, insert.getReportTitle());
			pstmt.setString(5, insert.getReportContent());
			pstmt.setString(6, insert.getReportPastDeal());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int selectReportAllCount(Connection conn) {
		int result = 0;
		Statement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReportAllCount");
		try {
			pstmt = conn.createStatement();
			rset = pstmt.executeQuery(sql);
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
	
	public ArrayList<Report> selectReportAll(Connection conn, PageInfo pi){
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReportAll");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1 ;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Report(rset.getInt(2),
						   rset.getInt(3),
						   rset.getString(4),
						   rset.getString(5),
						   rset.getString(6),
						   rset.getString(7),
						   rset.getString(8),
						   rset.getDate(9),
						   rset.getString(10)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Report selectDetailUpdate(Connection conn, int rno) {
		Report report = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailUpdate");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				report = new Report(rset.getInt(1),
						   rset.getInt(2),
						   rset.getInt(3),
						   rset.getString(4),
						   rset.getString(5),
						   rset.getString(6),
						   rset.getString(7),
						   rset.getDate(8),
						   rset.getString(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return report;
	}
	
	public int updateReportAnswer(Connection conn, int rno) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateReportAnswer");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	
	
}
