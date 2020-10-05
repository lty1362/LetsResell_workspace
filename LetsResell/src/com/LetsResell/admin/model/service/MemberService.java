package com.LetsResell.admin.model.service;
import static com.LetsResell.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.LetsResell.admin.model.dao.MemberDao;
import com.LetsResell.admin.model.vo.*;
import com.LetsResell.service.model.vo.PageInfo;
public class MemberService {

	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new MemberDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Admin_Member> selectList(Admin_PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Admin_Member> list = new MemberDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	public int searchListCount(String filter, String search) {
		Connection conn = getConnection();
		int listCount = new MemberDao().searchListCount(conn, filter, search);
		close(conn);
		return listCount;
	}
	
	public ArrayList<Admin_Member> searchList(String filter, String search, Admin_PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Admin_Member> list = new MemberDao().searchList(conn, filter, search, pi);
		close(conn);
		return list;
	}
	
	public Admin_Member selectDetailMember(int mno) {
		Connection conn = getConnection();
		Admin_Member mem = new MemberDao().selectDetailMember(conn, mno);
		close(conn);
		return mem;
	}
	
	public void blackMember(String black, int userNo) {
		Connection conn = getConnection();
		int result = new MemberDao().blackMember(conn, black, userNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
	}
	
	public String blackYN(int userNo) {
		Connection conn = getConnection();
		String blackYN = new MemberDao().blackYN(conn, userNo);
		close(conn);
		return blackYN;
	}
	
}
