package com.LetsResell.product.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.product.model.dao.ViewBiddingDao;
import com.LetsResell.product.model.vo.ViewBidding;

public class ViewViddingService {
	
	/**
	 * 1. 상품 구매 페이지에서 입찰 전체 현황 조회 서비스
	 * @return 조회된 서비스 리스트
	 */
	
	public ArrayList<ViewBidding> selectViewViddingList(){
		
		 Connection conn = getConnection();
		 
		 ArrayList<ViewBidding> list = new ViewBiddingDao().selectViewBiddingList(conn);
		 
		 close(conn);
		 
		 return list;
		
	}

}
