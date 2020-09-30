package com.LetsResell.admin.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.commit;
import static com.LetsResell.template.JDBCTemplate.getConnection;
import static com.LetsResell.template.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.admin.model.dao.ProductDao;
import com.LetsResell.admin.model.vo.Admin_Image;
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
	
	public int searchListCount(String filter, String search) {
		Connection conn = getConnection();
		int listCount = new ProductDao().searchListCount(conn, filter, search);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Admin_Product> searchList(String filter, String search, Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Product> list = new ProductDao().searchList(conn, filter, search, pi);
		close(conn);
		return list;
	}
	
	public int deleteProduct(String[] check) {
		Connection conn = getConnection();
		int result = new ProductDao().deleteProduct(conn, check);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int insertProduct(Admin_Product p, ArrayList<Admin_Image> list) {
		Connection conn = getConnection();
		int result1 = new ProductDao().insertProduct(conn, p);
		int result2 = new ProductDao().insertProductImage(conn, list);
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1 * result2;
	}
	
	public Admin_Product selectDetail(int pno) {
		Connection conn = getConnection();
		Admin_Product product = new ProductDao().selectDetail(conn, pno);
		close(conn);
		return product;
	}
	
	public int updateProduct(Admin_Product p) {
		Connection conn = getConnection();
		int result = new ProductDao().updateProduct(conn, p);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
