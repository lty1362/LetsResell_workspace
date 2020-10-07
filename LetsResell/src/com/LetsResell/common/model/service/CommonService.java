package com.LetsResell.common.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.common.member.vo.Event;
import com.LetsResell.common.member.vo.PageInfo;
import com.LetsResell.common.model.dao.CommonDao;
import com.LetsResell.product.model.vo.Product;
import com.LetsResell.product.model.vo.Sale;

import static com.LetsResell.template.JDBCTemplate.*;

public class CommonService {

	public int selectEventCount() {
		Connection conn = getConnection();
		
		int listCount = new CommonDao().selectEventCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Event> selectEventList() {
		
		Connection conn = getConnection();
		
		ArrayList<Event> eventList = new CommonDao().selectEventList(conn);
		
		close(conn);
		
		return eventList;
	}
	
	public int selectPopularCount() {
		Connection conn = getConnection();
		
		int listCount = new CommonDao().selectPopularCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Product> selectPopularList() {
		
		Connection conn = getConnection();
		
		ArrayList<Product> popularList = new CommonDao().selectPopularList(conn);
		
		close(conn);
		
		return popularList;
	}
	
	public int selectProductCount() {
		Connection conn = getConnection();
		
		int listCount = new CommonDao().selectProductCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Product> selectProductList(PageInfo productPi) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> productList = new CommonDao().selectProductList(conn, productPi);
		
		close(conn);
		
		return productList;
	}
	
	public int selectSaleCount() {
		Connection conn = getConnection();
		
		int listCount = new CommonDao().selectSaleCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Sale> selectSaleList(PageInfo salePi) {
		
		Connection conn = getConnection();
		
		ArrayList<Sale> saleList = new CommonDao().selectSaleList(conn, salePi);
		
		close(conn);
		
		return saleList;
	}
	
	public int selectOldCount() {
		Connection conn = getConnection();
		
		int listCount = new CommonDao().selectOldCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Sale> selectOldList(PageInfo oldPi) {
		
		Connection conn = getConnection();
		
		ArrayList<Sale> oldList = new CommonDao().selectOldList(conn, oldPi);
		
		close(conn);
		
		return oldList;
	}
}
