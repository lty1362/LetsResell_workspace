package com.LetsResell.product.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.product.model.dao.ProductDao;
import com.LetsResell.product.model.vo.Product;

public class ProductService {

	/**
	 * 1. Product 게시글 갯수 조회
	 * @return: 게시글 갯수
	 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new ProductDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	/**
	 * 2. Search Product
	 * @param search: 사용자가 입력한 검색값
	 * @return: 검색된 제품 갯수
	 */
	public ArrayList<Product> searchProduct(String search){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().searchProduct(conn, search);
		
		close(conn);
		
		return list;
	}
}
