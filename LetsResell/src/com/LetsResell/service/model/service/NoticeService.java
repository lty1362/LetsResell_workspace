package com.LetsResell.service.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.service.model.dao.NoticeDao;
import com.LetsResell.service.model.vo.Notice;
import com.LetsResell.service.model.vo.PageInfo;

import static com.LetsResell.template.JDBCTemplate.*;

public class NoticeService {
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Notice> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	public int searchListCount(String filter, String search) {
		Connection conn = getConnection();
		int listCount = new NoticeDao().searchListCount(conn, filter, search);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Notice> searchList(String filter, String search, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().searchList(conn, filter, search, pi);
		close(conn);
		return list;
	}
	
	public Notice selectDetail(int noticeNo) {
		Connection conn = getConnection();
		Notice detail = new NoticeDao().selectDetail(conn, noticeNo);
		close(conn);
		return detail;
	}
	
	
	
	
	
	
}