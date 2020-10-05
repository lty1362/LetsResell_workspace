package com.LetsResell.myPage.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.myPage.model.dao.MyPageSalesDao;
import com.LetsResell.myPage.model.vo.Bid;
import com.LetsResell.myPage.model.vo.Sale;
import com.LetsResell.myPage.model.vo.Trade;

public class MyPageSalesService {
	
	/**
	 * 1. 등록현황 입찰리스트
	 * @param userNo
	 * @return
	 */
	public ArrayList<Sale> salesListView(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Sale> list = new MyPageSalesDao().salesListView(conn, userNo);
		
		close(conn);
		
		return list;
	}
	
	/**
	 * 2. 입찰상세 중 판매내역
	 * @param saleNo
	 * @return
	 */
	public ArrayList<Sale> selectDetailInfo(int sno) {
		
		Connection conn = getConnection();
		
		ArrayList<Sale> slist = new MyPageSalesDao().selectDetailInfo(conn, sno);
		
		close(conn);
		
		return slist;
	}
	
	/**
	 * 3. 입찰 상세 중 구매입찰현황 
	 * @param saleNo
	 * @return
	 */
	public ArrayList<Bid> selectPurchaseInfo(int sno) {
		
		Connection conn = getConnection();
		
		ArrayList<Bid> blist = new MyPageSalesDao().selectPurchaseInfo(conn, sno);
		
		close(conn);
		
		return blist;
	}
	
	/**
	 * 4.판매내역 판매진행
	 * @param userNo
	 * @return
	 */
	public ArrayList<Sale> selectTradeList(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Sale> slist = new MyPageSalesDao().selectTradeList(conn, userNo);
		
		close(conn);
		
		return slist;
		
	}

	public int updateDelivery(Sale s) {
		
		Connection conn = getConnection();
		
		int result = new MyPageSalesDao().updateDelivery(conn, s);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}
	

}
