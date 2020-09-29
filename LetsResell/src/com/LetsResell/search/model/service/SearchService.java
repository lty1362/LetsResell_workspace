package com.LetsResell.search.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.search.model.dao.SearchDao;
import com.LetsResell.search.model.vo.PageInfo;
import com.LetsResell.search.model.vo.Search;



public class SearchService {
	
	public int selectListCount() {
			
		Connection conn = getConnection();
		
		int listCount = new SearchDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
			
	}

	
	public ArrayList<Search> searchList(String search, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Search> list = new SearchDao().SearchList(conn, search, pi);
		
		close(conn);
		
		return list;
	}
}
