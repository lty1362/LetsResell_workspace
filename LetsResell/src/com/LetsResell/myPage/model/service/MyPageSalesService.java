package com.LetsResell.myPage.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.myPage.model.dao.MyPageSalesDao;
import com.LetsResell.myPage.model.vo.Sale;

public class MyPageSalesService {

	public ArrayList<Sale> salesListView(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Sale> list = new MyPageSalesDao().salesListView(conn, userNo);
		
		close(conn);
		
		return list;
	}

}
