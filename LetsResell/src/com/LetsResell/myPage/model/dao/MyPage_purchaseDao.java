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

import com.LetsResell.myPage.model.vo.Bid;
import com.LetsResell.myPage.model.vo.Sale;
import com.LetsResell.myPage.model.vo.Trade;

public class MyPage_purchaseDao {
	
	private Properties prop = new Properties();
	
	public MyPage_purchaseDao() {
		
		String fileName = MyPage_purchaseDao.class.getResource("/sql/myPage/myPage-mapper2.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int purchaseListCount(Connection conn, int userNo) {
		
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("purchaseCount");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				listCount = rset.getInt("LISTCOUNT");
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}

	public ArrayList<Bid> purchaseListView(Connection conn, int userNo) {
		
		ArrayList<Bid> blist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPurchaseList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Bid b = new Bid();
				b.setBidNo(rset.getInt("BID_NO"));
				b.setBidPrice(rset.getInt("BID_PRICE"));
				b.setBidStatus(rset.getString("BID_STATUS"));
				b.setSaleNo(rset.getInt("SALE_NO"));
				b.setSaleName(rset.getString("SALE_NAME"));
				b.setSaleCondition(rset.getString("SALE_CONDITION"));
				b.setSaleSize(rset.getString("SALE_SIZE"));
				b.setSaleCategory(rset.getString("SALE_CATEGORY"));
				b.setTitleImg(rset.getString("TITLEIMG"));
				
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
	
	public int enrollPrice(Connection conn, Bid b) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("enrollPrice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, b.getBidPrice());
			pstmt.setInt(2, b.getBidNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteDetail(Connection conn, int bno) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<Trade> selectPurchaseStatus(Connection conn, int userNo) {
		
		ArrayList<Trade> tlist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPurchaseStatus");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Trade t = new Trade();
				t.setTradeNo(rset.getInt("TRADE_NO"));
				t.setTradeStatus(rset.getString("TRADE_STATUS"));
				t.setTradeService(rset.getString("TRADE_SERVICE"));
				t.setTradeNum(rset.getInt("TRADE_NUMBER"));
				t.setTradeCon(rset.getDate("TRADE_CONCLUDE"));
				t.setTradePrice(rset.getInt("TRADE_PRICE"));
				t.setSaleNo(rset.getInt("SALE_NO"));
				t.setSaleName(rset.getString("SALE_NAME"));
				t.setSaleCondition(rset.getString("SALE_CONDITION"));
				t.setSaleSize(rset.getString("SALE_SIZE"));
				t.setSaleCategory(rset.getString("SALE_CATEGORY"));
				t.setTitleImg(rset.getString("TITLEIMG"));
				
				tlist.add(t);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return tlist;
	}

	public ArrayList<Trade> selectStatusInfo(Connection conn, int tno) {
		
		ArrayList<Trade> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectStatusInfo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, tno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Trade t = new Trade();
				t.setTradeNo(rset.getInt("TRADE_NO"));
				t.setTradeStatus(rset.getString("TRADE_STATUS"));
				t.setTradeService(rset.getString("TRADE_SERVICE"));
				t.setTradeNum(rset.getInt("TRADE_NUMBER"));
				t.setTradeCon(rset.getDate("TRADE_CONCLUDE"));
				t.setTradePrice(rset.getInt("TRADE_PRICE"));
				t.setSaleNo(rset.getInt("SALE_NO"));
				t.setSaleName(rset.getString("SALE_NAME"));
				t.setSaleCondition(rset.getString("SALE_CONDITION"));
				t.setSaleSize(rset.getString("SALE_SIZE"));
				t.setSaleCategory(rset.getString("SALE_CATEGORY"));
				t.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(t);
				
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

	public int updateStatus(Connection conn, int tno) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateStatus");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, tno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public int deletePurchase(Connection conn, int tno) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deletePurchase");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, tno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
		
	}

	public ArrayList<Trade> selectPurchaseCom(Connection conn, int userNo) {
		
		ArrayList<Trade> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPurchaseCom");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Trade t = new Trade();
				t.setTradeNo(rset.getInt("TRADE_NO"));
				t.setTradeStatus(rset.getString("TRADE_STATUS"));
				t.setTradeService(rset.getString("TRADE_NUMBER"));
				t.setTradeCon(rset.getDate("TRADE_CONCLUDE"));
				t.setTradePrice(rset.getInt("TRADE_PRICE"));
				t.setSaleName(rset.getString("SALE_NAME"));
				t.setSaleCondition(rset.getString("SALE_CONDITION"));
				t.setSaleSize(rset.getString("SALE_SIZE"));
				t.setSaleCategory(rset.getString("SALE_CATEGORY"));
				t.setTitleImg(rset.getString("TITLEIMG"));
				
				list.add(t);
				
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

	public int updateSalesStatus(Connection conn, int sno) {
		
		int sResult = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateSalesStatus");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			sResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return sResult;
		
	}

	public int deleteSales(Connection conn, int sno) {
		
		int sResult = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteSales");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			sResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return sResult;
		
	}

	public ArrayList<Sale> saleInfo(Connection conn, int sno) {
		
		ArrayList<Sale> slist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("saleInfo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Sale s = new Sale();
				s.setPhone(rset.getString("MEM_PHONE"));
				
				slist.add(s);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return slist;
		
	}

	public Bid highestPrice(Connection conn, int sno) {
		
		Bid b = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("highestPrice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				b = new Bid(rset.getInt("BID_NO"),
							rset.getInt("SALE_NO"),
							rset.getInt("MEM_USER_NO"),
						    rset.getInt("BID_PRICE"),
						    rset.getDate("BID_DATE"),
						    rset.getInt("ADDRESS_NO"),
						    rset.getString("BID_STATUS"),
						    rset.getString("SALE_NAME"),
						    rset.getString("SALE_CONDITION"),
						    rset.getString("SALE_SIZE"),
						    rset.getString("SALE_CATEGORY"),
						    rset.getString("TITLEIMG"),
						    rset.getString("MEM_USER_ID"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return b;
		
	}

}
