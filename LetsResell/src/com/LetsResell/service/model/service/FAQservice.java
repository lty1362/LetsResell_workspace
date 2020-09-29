package com.LetsResell.service.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.service.model.dao.FAQdao;
import com.LetsResell.service.model.vo.FAQ;
import com.LetsResell.service.model.vo.PageInfo;

public class FAQservice {
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new FAQdao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<FAQ> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<FAQ> list = new FAQdao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	public int searchListCount(String category) {
		Connection conn = getConnection();
		int listCount = new FAQdao().searchListCount(conn, category);
		close(conn);
		return listCount;
	}
	
	public ArrayList<FAQ> searchList(String category, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<FAQ> list = new FAQdao().searchList(conn, category, pi);
		close(conn);
		return list;
	}
	
	public int deleteFAQ(String[] check) {
		Connection conn = getConnection();
		int result = new FAQdao().deleteFAQ(conn, check);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
}
