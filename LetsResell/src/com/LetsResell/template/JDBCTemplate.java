package com.LetsResell.template;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class JDBCTemplate {
	// 1. Connection 객체 생성(DB접속)한 후 해당 Connection 반환해주는 getConnection method
	public static Connection getConnection() {
		Properties prop = new Properties();
		
		// 읽어들이고자하는 driver.properties 파일의 물리적인 경로
		String fileName = JDBCTemplate.class.getResource("/sql/driver/driver.properties").getPath();
		
		try {
			prop.load(new FileInputStream(fileName));
		}catch(IOException e){
			e.printStackTrace();
		}
		Connection conn = null;
		try {
			Class.forName(prop.getProperty("driver"));
			conn = DriverManager.getConnection(prop.getProperty("url"),
					prop.getProperty("username"),
					prop.getProperty("password"));
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	// 2. Connection 객체 전달받아서 commit해주는 commit method
	public static void commit(Connection conn) {
		
		try {
			if(conn != null && !conn.isClosed()) {
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// 3. Connection 객체 전달받아서 rollback해주는 rollback method
	public static void rollback(Connection conn) {
		
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// 4. Connection 객체 전달받아서 close해주는 close method
	public static void close(Connection conn) {
		
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// 5. Statement 객체 전달받아서 close해주는 close method
	public static void close(Statement stmt) {
		
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// 6. ResultSet 객체 전달받아서 close해주는 close method
	public static void close(ResultSet rset) {
		
		try {
			if(rset != null && !rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
