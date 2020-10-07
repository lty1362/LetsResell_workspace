package com.LetsResell.product.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.common.member.vo.Filter;
import com.LetsResell.common.member.vo.PageInfo;
import com.LetsResell.product.model.dao.ProductDao;
import com.LetsResell.product.model.vo.Product;
import com.LetsResell.product.model.vo.Sale;

public class ProductService {

	
	/**
	 * 1. search 조건 제품 게시글 갯수
	 * @param search: 검색 조건
	 * @return
	 */
	public int selectSearchListCount(String search) {
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectSearchListCount(conn, search);
		
		close(conn);
		
		return listCount;
	}
	
	/**
	 * 2. 검색창을 통한 제품 게시글 갯수
	 * @param search : 검색 조건
	 * @param pi : 페이징 처리
	 * @return
	 */
	public ArrayList<Product> searchProduct(String search, PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().searchProduct(conn, search, pi);
		
		close(conn);
		
		return list;
	}
	
	/**
	 * 3. 필터를 통한 제품 게시글 갯수
	 * @param filter: 필터 조건
	 * @return
	 */
	public int selectFilterCount(Filter filter) {
		Connection conn = getConnection();
		
		int listCount = new ProductDao().searchFilterCount(conn, filter);
		
		close(conn);
		
		return listCount;
	}
	
	/**
	 * 4. 필터를 통한 제품 검색
	 * @param filter
	 * @param pi
	 * @param order = null or "asc" or "desc"
	 * @return
	 */
	public ArrayList<Product> filterSearchProduct(Filter filter, PageInfo pi, String order) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ArrayList<>();
		
		if(order.equals("asc")) {
			list = new ProductDao().filterSearchProductPriceAsc(conn, filter, pi);
		} else if(order.equals("desc")) {
			list = new ProductDao().filterSearchProductPriceDesc(conn, filter, pi);
		} else {
			list = new ProductDao().filterSearchProduct(conn, filter, pi);
		}
		
		close(conn);
		
		return list;
	}
	
	public int selectSaleListCount(int prNo) {
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectSaleListCount(conn, prNo);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Sale> selectSaleList(int prNo, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Sale> list = new ProductDao().selectSaleList(conn, prNo, pi);
		
		close(conn);
		
		return list;
	}
	
	public Product selectProductInfo(int prNo) {
		Connection conn = getConnection();
		
		Product p = new ProductDao().selectProductInfo(conn, prNo);
		
		close(conn);
		
		return p;
	}
	
	public ArrayList<Product> selectProductImgList(int prNo, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Product> imgList = new ProductDao().selectProductImgList(conn, prNo, pi);
		
		close(conn);
		
		return imgList;
	}
	
	public int wishListAdd(int prNo, int userNo) {
		Connection conn = getConnection();
		
		int result = new ProductDao().wishListAdd(conn, prNo, userNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int selectProductImgListCount(int prNo) {
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectProductImgListCount(conn, prNo);
		
		close(conn);
		
		return listCount;
	}
}
