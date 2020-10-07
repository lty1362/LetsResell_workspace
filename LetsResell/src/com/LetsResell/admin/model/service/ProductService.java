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
	
	public int searchListCount(String filter, String search, String category) {
		Connection conn = getConnection();
		int listCount = new ProductDao().searchListCount(conn, filter, search, category);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Admin_Product> searchList(String filter, String search, Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Product> list = new ProductDao().searchList(conn, filter, search, pi);
		close(conn);
		return list;
	}
	
	public ArrayList<Admin_Product> searchList(String filter, String search, String category, Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Product> list = new ProductDao().searchList(conn, filter, search, category, pi);
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
	
	public int updateProduct(Admin_Product p, ArrayList<Admin_Image> list1, Admin_Image file2,
			Admin_Image file3, Admin_Image file4, Admin_Image file5) {
		Connection conn = getConnection();
		int result1 = new ProductDao().updateProduct(conn, p);
		int result2 = 1;
		int result3 = 1;
		int result4 = 1;
		int result5 = 1;
		int result6 = 1;
		
		if(list1.size() == 1) {
			result2 = new ProductDao().updateProductMainImage(conn, list1, p.getPRno());
		}
		
		if(file2 != null) {
			int test = new ProductDao().test(conn, file2, p.getPRno());
			if(test == 0) {
				result3 = new ProductDao().insertProductDetailImage(conn, file2, p.getPRno());
			}else {
				result3 = new ProductDao().updateProductDetailImage(conn, file2, p.getPRno());
			}
		}
		
		if(file3 != null) {
			int test = new ProductDao().test(conn, file3, p.getPRno());
			if(test == 0) {
				result4 = new ProductDao().insertProductDetailImage(conn, file3, p.getPRno());
			}else {
				result4 = new ProductDao().updateProductDetailImage(conn, file3, p.getPRno());
			}
		}
		
		if(file4 != null) {
			int test = new ProductDao().test(conn, file4, p.getPRno());
			if(test == 0) {
				result4 = new ProductDao().insertProductDetailImage(conn, file4, p.getPRno());
			}else {
				result4 = new ProductDao().updateProductDetailImage(conn, file4, p.getPRno());
			}
		}
		
		if(file5 != null) {
			int test = new ProductDao().test(conn, file5, p.getPRno());
			System.out.println(test);
			if(test == 0) {
				result5 = new ProductDao().insertProductDetailImage(conn, file5, p.getPRno());
			}else {
				result5 = new ProductDao().updateProductDetailImage(conn, file5, p.getPRno());
			}
		}
		
		
		if(result1 > 0 && result2 > 0 && result3 > 0 && result4 > 0 && result5 > 0 && result6 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1 * result2 * result3 * result4 * result5 * result6;
	}
	
	public ArrayList<Admin_Image> selectImage(int pno) {
		Connection conn = getConnection();
		ArrayList<Admin_Image> image = new ProductDao().selectImage(conn, pno);
		close(conn);
		return image;
	}
	
	
	
	
}
