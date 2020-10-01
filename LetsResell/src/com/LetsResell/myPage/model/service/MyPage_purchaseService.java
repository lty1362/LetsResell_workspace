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
		
		ArrayList<Bid> list = new MyPage_purchaseDao().purchaseListView(conn, userNo);
		
		close(conn);
		
		return list;
	}


}
