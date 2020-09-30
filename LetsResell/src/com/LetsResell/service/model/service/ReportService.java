package com.LetsResell.service.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.commit;
import static com.LetsResell.template.JDBCTemplate.getConnection;
import static com.LetsResell.template.JDBCTemplate.rollback;

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
	
	public int updateReport(Report update) {
		Connection conn = getConnection();
		int result = new ReportDao().updateReport(conn, update);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int insertReport(int writer, Report insert) {
		Connection conn = getConnection();
		int result = new ReportDao().insertReport(conn, writer, insert);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int selectReportAllCount() {
		Connection conn = getConnection();
		int listCount = new ReportDao().selectReportAllCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Report> selectReportAll(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Report> list = new ReportDao().selectReportAll(conn, pi);
		close(conn);
		return list;
	}
	
	public Report selectDetailUpdate(int rno) {
		Connection conn = getConnection();
		Report report = new ReportDao().selectDetailUpdate(conn, rno);
		close(conn);
		return report;
	}
	
	public int updateReportAnswer(int rno) {
		Connection conn = getConnection();
		int result = new ReportDao().updateReportAnswer(conn, rno);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
