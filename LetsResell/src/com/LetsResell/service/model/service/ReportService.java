package com.LetsResell.service.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.service.model.dao.InquiryDao;
import com.LetsResell.service.model.dao.ReportDao;
import com.LetsResell.service.model.vo.Inquiry;
import com.LetsResell.service.model.vo.PageInfo;
import com.LetsResell.service.model.vo.Report;

public class ReportService {
	
	public int selectListCount(int writer) {
		Connection conn = getConnection();
		int listCount = new ReportDao().selectListCount(conn, writer);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Report> selectList(int writer, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Report> list = new ReportDao().selectList(conn, writer, pi);
		close(conn);
		return list;
	}
	
	public Report selectDetail(int ino, int writer) {
		Connection conn = getConnection();
		Report list = new ReportDao().selectDetail(conn, ino, writer);
		close(conn);
		return list;
	}
	
}
