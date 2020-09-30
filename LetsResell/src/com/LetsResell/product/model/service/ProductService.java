package com.LetsResell.product.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.product.model.dao.ProductDao;
import com.LetsResell.product.model.vo.Product;

public class ProductService {

	public ArrayList<Product> searchProduct(String search){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().searchProduct(conn, search);
		
		close(conn);
		
		return list;
	}
}
