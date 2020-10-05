package com.LetsResell.admin.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.admin.model.dao.ProductDao;
import com.LetsResell.admin.model.dao.SaleDao;
import com.LetsResell.admin.model.vo.Admin_PageInfo;
import com.LetsResell.admin.model.vo.Admin_Product;
import com.LetsResell.admin.model.vo.Admin_Sale;

public class SaleService {
	
	public ArrayList<Admin_Sale> selectMemberDetail(int mno){
		Connection conn = getConnection();
		ArrayList<Admin_Sale> list = new SaleDao().selectMemberDetail(conn, mno);
		close(conn);
		return list;
	}
	
	// select count(*) from sale;
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new SaleDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	// select * from sale;
	public ArrayList<Admin_Sale> selectList(Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Sale> list = new SaleDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	public int searchListCount(String filter, String search) {
		Connection conn = getConnection();
		int listCount = new SaleDao().searchListCount(conn, filter, search);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Admin_Sale> searchList(String filter, String search, Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Sale> list = new SaleDao().searchList(conn, filter, search, pi);
		close(conn);
		return list;
	}
	
}
