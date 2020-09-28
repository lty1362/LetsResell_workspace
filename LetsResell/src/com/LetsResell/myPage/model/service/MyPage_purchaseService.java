package com.LetsResell.myPage.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.myPage.model.dao.MyPage_purchaseDao;
import com.LetsResell.myPage.model.vo.*;

public class MyPage_purchaseService {

	public ArrayList<Bid> selectPurchaseList(Bid b) {
		
		Connection conn = getConnection();
		
		ArrayList<Bid> list = new MyPage_purchaseDao().selectPurchaseList(conn, b);
		
		close(conn);
		
		return list;
		
	}

}
