package com.LetsResell.service.model.dao;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.LetsResell.template.JDBCTemplate.close;
import com.LetsResell.service.model.vo.Trade;

public class TradeDao {
	
	private Properties prop = new Properties();
	
	public TradeDao() {
		String fileName = TradeDao.class.getResource("/sql/service/trade-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Trade> selectTrade(Connection conn, int writer){
		ArrayList<Trade> trade = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTrade");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, writer);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Trade t = new Trade(rset.getInt(1),
									rset.getInt(2),
									rset.getInt(3),
									rset.getInt(4),
									rset.getString(5),
									rset.getString(6),
									rset.getInt(7),
									rset.getDate(8),
									rset.getDate(9),
									rset.getInt(10),
									rset.getInt(11));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return trade;
	}
	
	public ArrayList<Integer> selectSaleNo(Connection conn, int writer){
		ArrayList<Integer> saleNo = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectSaleNo");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, writer);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				saleNo.add(rset.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return saleNo;
	}
	
	public ArrayList<String> selectSaleName(Connection conn, ArrayList<Integer> saleNo){
		ArrayList<String> saleName = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectSaleName");
		try {
			for(int i = 0 ; i < saleNo.size() ; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, saleNo.get(i));
				rset = pstmt.executeQuery();
				if(rset.next()) {
					saleName.add(rset.getString(1));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return saleName;
	}
	
	public ArrayList<Date> selectTradeDay(Connection conn, int writer, ArrayList<Integer> saleNo){
		ArrayList<Date> tradeDay = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTradeDay");
		try {
			for(int i = 0 ; i < saleNo.size() ; i++) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, writer);
				pstmt.setInt(2, saleNo.get(i));
				rset = pstmt.executeQuery();
				if(rset.next()) {
					tradeDay.add(rset.getDate(1));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return tradeDay;
	}
	
	public ArrayList<Trade> selectMemberDetail(Connection conn, int mno){
		ArrayList<Trade> tradeList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMemberDetail");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Trade t = new Trade(rset.getInt(1),
									rset.getInt(2),
									rset.getString(3),
									rset.getInt(4),
									rset.getDate(5));
				tradeList.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return tradeList;
	}
	
	
	
	
	
	
}
