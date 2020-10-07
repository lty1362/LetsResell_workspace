package com.LetsResell.myPage.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.myPage.model.dao.MyPageSalesDao;
import com.LetsResell.myPage.model.vo.Address;
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
	
	/**
	 * 5. 운송장 입력
	 * @param s
	 * @return
	 */
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
	
	/**
	 * 6.판매등록 삭제
	 * @param sno
	 * @return
	 */
	public int deleteList(int sno) {
		
		Connection conn = getConnection();
		
		int result = new MyPageSalesDao().deleteList(conn, sno);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
		
	}
	
	public int deletePList(int sno) {
		
		Connection conn = getConnection();
		
		int pResult = new MyPageSalesDao().deletePList(conn, sno);
		
		if(pResult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return pResult;
		
	}
	
	/**
	 * 7.판매완료
	 * @param userNo
	 * @return
	 */
	public ArrayList<Sale> selectSalesCom(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Sale> sclist = new MyPageSalesDao().selectSalesCom(conn, userNo);
		
		close(conn);
		
		return sclist;
		
	}
	
	/**
	 * 거래진행 삭제
	 * @param tno
	 * @return
	 */
	public int deleteTrade(int tno) {
		
		Connection conn = getConnection();
		
		int tResult = new MyPageSalesDao().deleteTrade(conn, tno);
		
		if(tResult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return tResult;
		
	}
	
	/**
	 * 구매자 배송지
	 * @param tno
	 * @return
	 */
	public ArrayList<Address> selectPAddress(int tno) {
		
		Connection conn = getConnection();
		
		ArrayList<Address> alist = new MyPageSalesDao().selectPAddress(conn, tno);
		
		close(conn);
		
		return alist;
		
	}
	

}
