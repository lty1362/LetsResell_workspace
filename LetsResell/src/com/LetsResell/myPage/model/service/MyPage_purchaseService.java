package com.LetsResell.myPage.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.myPage.model.dao.MyPage_purchaseDao;
import com.LetsResell.myPage.model.vo.*;

public class MyPage_purchaseService {
	
	/**
	 * 1. 구매내역 입찰진행중인 거래 수
	 * @param userNo  로그인한 회원번호
	 * @return
	 */
	public int purchaseListCount(int userNo) {
		
		Connection conn = getConnection();
		
		int listCount = new MyPage_purchaseDao().purchaseListCount(conn, userNo);
		
		close(conn);
		
		return listCount;
	}
	
	/**
	 * 2. 구매내역 리스트조회
	 * @param userNo
	 * @return
	 */
	public ArrayList<Bid> purchaseListView(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Bid> blist = new MyPage_purchaseDao().purchaseListView(conn, userNo);
		
		close(conn);
		
		return blist;
	}
	
	/**
	 * 3. 입찰가격갱신
	 * @param b
	 * @return
	 */
	public int enrollPrice(Bid b) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_purchaseDao().enrollPrice(conn, b);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	/**
	 * 4. 입찰취소
	 * @param bno
	 * @return
	 */
	public int deleteDetail(int bno) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_purchaseDao().deleteDetail(conn, bno);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	/**
	 * 5.입찰진행
	 * @param userNo
	 * @return
	 */
	public ArrayList<Trade> selectPurchaseStatus(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Trade> tlist = new MyPage_purchaseDao().selectPurchaseStatus(conn, userNo);
		
		close(conn);
		
		return tlist;
		
	}
	
	/**
	 * 6.진행상세
	 * @param tno
	 * @return
	 */
	public ArrayList<Trade> selectStatusInfo(int tno) {
		
		Connection conn = getConnection();
		
		ArrayList<Trade> list = new MyPage_purchaseDao().selectStatusInfo(conn, tno);
		
		close(conn);
		
		return list;
		
	}
	
	/**
	 * 7.구매진행/구매완료
	 * @param tno
	 * @return
	 */
	public int updateStatus(int tno) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_purchaseDao().updateStatus(conn,tno);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}
	
	/**
	 * 8. 구매취소
	 * @param tno
	 * @return
	 */
	public int deletePurchase(int tno) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_purchaseDao().deletePurchase(conn,tno);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
		
	}
	
	/**
	 * 9. 구매완료 리스트
	 * @param userNo
	 * @return
	 */
	public ArrayList<Trade> selectPurchaseCom(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Trade> list = new MyPage_purchaseDao().selectPurchaseCom(conn, userNo);
		
		close(conn);
		
		return list;
		
	}

	public int updateSalesStatus(int sno) {
		
		Connection conn = getConnection();
		
		int sResult = new MyPage_purchaseDao().updateSalesStatus(conn,sno);
		
		if(sResult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return sResult;
		
	}

	public int deleteSales(int sno) {
		
		Connection conn = getConnection();
		
		int sResult = new MyPage_purchaseDao().deleteSales(conn,sno);
		
		if(sResult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return sResult;
		
	}

	public ArrayList<Sale> saleInfo(int sno) {
			
		Connection conn = getConnection();
		
		ArrayList<Sale> slist = new MyPage_purchaseDao().saleInfo(conn, sno);
		
		close(conn);
		
		return slist;
		
	}
	
	
	/**
	 * 최고입찰가격
	 * @param sno
	 * @return
	 */
	public Bid highestPrice(int sno) {
		
		Connection conn = getConnection();
		
		Bid b = new MyPage_purchaseDao().highestPrice(conn, sno);
		
		close(conn);
		
		return b;
		
	}


}
