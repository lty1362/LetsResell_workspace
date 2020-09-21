package com.LetsResell.service.model.service;

import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.service.model.dao.InquiryDao;
import com.LetsResell.service.model.vo.Inquiry;
import com.LetsResell.service.model.vo.PageInfo;

public class InquiryService {

	public int selectListCount(int writer) {
		Connection conn = getConnection();
		int listCount = new InquiryDao().selectListCount(conn, writer);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Inquiry> selectList(int writer, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Inquiry> list = new InquiryDao().selectList(conn, writer, pi);
		close(conn);
		return list;
	}
		
	public Inquiry selectDetail(int ino, int writer) {
		Connection conn = getConnection();
		Inquiry list = new InquiryDao().selectDetail(conn, ino, writer);
		close(conn);
		return list;
	}
	
	public int updateInquiry(Inquiry update) {
		Connection conn = getConnection();
		int result = new InquiryDao().updateInquiry(conn, update);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int insertInquiry(Inquiry insert) {
		Connection conn = getConnection();
		int result = new InquiryDao().insertInquiry(conn, insert);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
