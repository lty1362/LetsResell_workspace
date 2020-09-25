package com.LetsResell.admin.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.admin.model.dao.SaleDao;
import com.LetsResell.admin.model.vo.Admin_Sale;

public class SaleService {
	
	public ArrayList<Admin_Sale> selectMemberDetail(int mno){
		Connection conn = getConnection();
		ArrayList<Admin_Sale> list = new SaleDao().selectMemberDetail(conn, mno);
		close(conn);
		return list;
	}
	
}
