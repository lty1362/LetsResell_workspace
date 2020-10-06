package com.LetsResell.member.model.dao;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import static com.LetsResell.template.JDBCTemplate.*;
import com.LetsResell.member.model.vo.Member;

public class MemberDao {
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (InvalidPropertiesFormatException e) {
			
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	public Member loginMember(Connection conn, String userId, String userPwd) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("MEM_USER_NO"),
						 	   rset.getString("MEM_USER_ID"), 
						       rset.getString("MEM_USER_PWD"),
						       rset.getString("MEM_USER_NAME"),
						       rset.getString("MEM_PHONE"),
						       rset.getDate("MEM_ENROLL_DATE"),
						       rset.getDate("MEM_MODIFY_DATE"),
						       rset.getString("MEM_STATUS"),
						       rset.getString("MEM_USER_SSN"),
						       rset.getDate("MEM_OUT_DATE"),
						       rset.getInt("MEM_REPORT_COUNT"),
						       rset.getString("MEM_BLACKLIST_STATUS"));
						     
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}
	
	public int insertMember(Connection conn, Member m) {
		
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getPhone());
			pstmt.setString(5, m.getUserSsn());
			
			result = pstmt.executeUpdate();
						
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;		
		
	}
	
	public Member selectByUserName(Connection conn, String userName) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectByUserName");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userName);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("MEM_USER_NO"),
						 	   rset.getString("MEM_USER_ID"), 
						       rset.getString("MEM_USER_PWD"),
						       rset.getString("MEM_USER_NAME"),
						       rset.getString("MEM_PHONE"),
						       rset.getDate("MEM_ENROLL_DATE"),
						       rset.getDate("MEM_MODIFY_DATE"),
						       rset.getString("MEM_STATUS"),
						       rset.getString("MEM_USER_SSN"),
						       rset.getDate("MEM_OUT_DATE"),
						       rset.getInt("MEM_REPORT_COUNT"),
						       rset.getString("MEM_BLACKLIST_STATUS"));
						     
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return m;
	}
	
	public Member selectByUserId(Connection conn, String userId) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectByUserId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("MEM_USER_NO"),
						 	   rset.getString("MEM_USER_ID"), 
						       rset.getString("MEM_USER_PWD"),
						       rset.getString("MEM_USER_NAME"),
						       rset.getString("MEM_PHONE"),
						       rset.getDate("MEM_ENROLL_DATE"),
						       rset.getDate("MEM_MODIFY_DATE"),
						       rset.getString("MEM_STATUS"),
						       rset.getString("MEM_USER_SSN"),
						       rset.getDate("MEM_OUT_DATE"),
						       rset.getInt("MEM_REPORT_COUNT"),
						       rset.getString("MEM_BLACKLIST_STATUS"));
						    
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return m;
	} 
	
	public int changePwdMember(Connection conn,String changePwd, String userName) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("changePwdMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, changePwd);
			pstmt.setString(2, userName);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}
}
