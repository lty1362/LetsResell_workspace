package com.LetsResell.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;

import com.LetsResell.product.model.vo.ViewBidding;

public class ViewBiddingDao {
	
	private Properties prop = new Properties();
	
	public ViewBiddingDao() {
		
		String fileName = ViewBiddingDao.class.getResource("/sql/product/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));	
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ViewBidding> selectViewBiddingList(Connection conn){
		
		
		
	}

}
