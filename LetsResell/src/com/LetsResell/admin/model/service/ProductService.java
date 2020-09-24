package com.LetsResell.admin.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.admin.model.dao.ProductDao;
import com.LetsResell.admin.model.vo.Admin_PageInfo;
import com.LetsResell.admin.model.vo.Admin_Product;

public class ProductService {
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ProductDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Admin_Product> selectList(Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Product> list = new ProductDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	public int selectCategoryCount(String category) {
		Connection conn = getConnection();
		int listCount = new ProductDao().selectCategoryCount(conn, category);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Admin_Product> selectCategory(String category, Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Product> list = new ProductDao().selectCategory(conn, category, pi);
		close(conn);
		return list;
	}
	
	
	
}
