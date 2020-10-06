package com.LetsResell.member.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.commit;
import static com.LetsResell.template.JDBCTemplate.getConnection;
import static com.LetsResell.template.JDBCTemplate.rollback;

import java.sql.Connection;


import com.LetsResell.member.model.dao.MemberDao;
import com.LetsResell.member.model.vo.Member;




public class MemberService {
	
	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		
		Member loginMember = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return loginMember;
	}
	
	public int insertMember(Member m) {
		
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	public Member selectByUserName(String userName) {
		
		Connection conn = getConnection();
		
		Member m = new MemberDao().selectByUserName(conn, userName);
		
		close(conn);
		
		return m;
	}
	
	public Member selectByUserId(String userId) {
		Connection conn = getConnection();
		
		Member m = new MemberDao().selectByUserId(conn, userId);
		
		close(conn);
		
		return m;
	}
	
	public int changePwdMember(String changePwd, String userName) {
		Connection conn = getConnection();
		
		int result = new MemberDao().changePwdMember(conn,changePwd, userName);
		
		
		if(result > 0) {
			commit(conn);
		
		}else {
			rollback(conn);
			
		}
		
		close(conn);
		
		return result;
	}
	 
	
	         

}
