package com.LetsResell.myPage.model.dao;

import static com.LetsResell.template.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.myPage.model.vo.Address;
import com.LetsResell.myPage.model.vo.Bid;
import com.LetsResell.myPage.model.vo.Sale;
import com.LetsResell.myPage.model.vo.Trade;

public class MyPageSalesDao {
	
	private Properties prop = new Properties();
	
	public MyPageSalesDao() {
		
		String fileName = MyPageSalesDao.class.getResource("/sql/myPage/myPage-mapper3.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Sale> salesListView(Connection conn, int userNo) {
		
		ArrayList<Sale> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSalesList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Sale s = new Sale();
				s.setSaleNo(rset.getInt("SALE_NO"));
				s.setSalePrice(rset.getInt("SALE_PRICE"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setSaleEnrollDate(rset.getDate("SALE_ENROLL_DATE"));
				s.setSaleCondition(rset.getString("SALE_CONDITION"));
				s.setSaleStatus(rset.getString("SALE_STATUS"));
				s.setSaleSize(rset.getString("SALE_SIZE"));
				s.setSaleCategory(rset.getString("SALE_CATEGORY"));
				s.setSalePeriod(rset.getString("SALE_PERIOD"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(s);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public ArrayList<Sale> selectDetailInfo(Connection conn, int sno) {
		
		ArrayList<Sale> slist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDetailInfo");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Sale s = new Sale();
				s.setSalePrice(rset.getInt("SALE_PRICE"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setSaleEnrollDate(rset.getDate("SALE_ENROLL_DATE"));
				s.setSaleCondition(rset.getString("SALE_CONDITION"));
				s.setSaleStatus(rset.getString("SALE_STATUS"));
				s.setSaleSize(rset.getString("SALE_SIZE"));
				s.setSaleCategory(rset.getString("SALE_CATEGORY"));
				s.setSalePeriod(rset.getString("SALE_PERIOD"));
				s.setPrColor(rset.getString("PR_COLOR"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				slist.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return slist;
	}

	public ArrayList<Bid> selectPurchaseInfo(Connection conn, int sno) {
		
		ArrayList<Bid> blist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPurchaseInfo");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Bid b = new Bid();
				b.setMemUserId(rset.getString("MEM_USER_ID"));
				b.setBidPrice(rset.getInt("BID_PRICE"));
				b.setBidDate(rset.getDate("BID_DATE"));
				
				blist.add(b);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return blist;
	}

	public ArrayList<Sale> selectTradeList(Connection conn, int userNo) {
		
		ArrayList<Sale> slist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTradeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Sale s = new Sale();
				s.setSaleNo(rset.getInt("SALE_NO"));
				s.setSalePrice(rset.getInt("SALE_PRICE"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setSaleEnrollDate(rset.getDate("SALE_ENROLL_DATE"));
				s.setSaleCondition(rset.getString("SALE_CONDITION"));
				s.setSaleStatus(rset.getString("SALE_STATUS"));
				s.setSaleSize(rset.getString("SALE_SIZE"));
				s.setSaleCategory(rset.getString("SALE_CATEGORY"));
				s.setSalePeriod(rset.getString("SALE_PERIOD"));
				s.setTradePrice(rset.getInt("TRADE_PRICE"));
				s.setTradeStatus(rset.getString("TRADE_STATUS"));
				s.setTradeNo(rset.getInt("TRADE_NO"));
				s.setTradeService(rset.getString("TRADE_SERVICE"));
				s.setTradeNum(rset.getInt("TRADE_NUMBER"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				slist.add(s);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return slist;
	}

	public int updateDelivery(Connection conn, Sale s) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateDelivery");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, s.getTradeService());
			pstmt.setInt(2, s.getTradeNum());
			pstmt.setInt(3, s.getTradeNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteList(Connection conn, int sno) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}

	public ArrayList<Sale> selectSalesCom(Connection conn, int userNo) {
		
		ArrayList<Sale> sclist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSalesCom");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Sale s = new Sale();
				s.setSaleNo(rset.getInt("SALE_NO"));
				s.setSalePrice(rset.getInt("SALE_PRICE"));
				s.setSaleName(rset.getString("SALE_NAME"));
				s.setSaleEnrollDate(rset.getDate("SALE_ENROLL_DATE"));
				s.setSaleCondition(rset.getString("SALE_CONDITION"));
				s.setSaleStatus(rset.getString("SALE_STATUS"));
				s.setSaleSize(rset.getString("SALE_SIZE"));
				s.setSaleCategory(rset.getString("SALE_CATEGORY"));
				s.setSalePeriod(rset.getString("SALE_PERIOD"));
				s.setTradePrice(rset.getInt("TRADE_PRICE"));
				s.setTradeStatus(rset.getString("TRADE_STATUS"));
				s.setTradeNo(rset.getInt("TRADE_NO"));
				s.setTradeService(rset.getString("TRADE_SERVICE"));
				s.setTradeNum(rset.getInt("TRADE_NUMBER"));
				s.setTitleImg(rset.getString("TITLEIMG"));
				
				sclist.add(s);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return sclist;
		
	}

	public int deletePList(Connection conn, int sno) {
		
		int pResult = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deletePList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			pResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return pResult;
		
	}

	public int deleteTrade(Connection conn, int tno) {
		
		int tResult = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteTrade");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, tno);
			
			tResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return tResult;
		
	}

	public ArrayList<Address> selectPAddress(Connection conn, int tno) {
		
		ArrayList<Address> alist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPAddress");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, tno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Address add = new Address();
				add.setAddressMain(rset.getString("ADDRESS_MAIN"));
				add.setAddressDetail(rset.getString("ADDRESS_DETAIL"));
				
				alist.add(add);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return alist;
		
	}



}
