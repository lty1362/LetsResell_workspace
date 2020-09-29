package com.LetsResell.search.model.dao;

import static com.LetsResell.template.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import com.LetsResell.search.model.vo.PageInfo;
import com.LetsResell.search.model.vo.Search;



public class SearchDao {
	private Properties prop = new Properties();
	
	public SearchDao() {
		
		String fileName = SearchDao.class.getResource("/sql/search/search-mapper.xml").getPath();
		
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
	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
		
	}
	public ArrayList<Search> SearchList(Connection conn, String search, PageInfo pi) {
		
		
		ArrayList<Search> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			
			pstmt.setString(1, search);
			pstmt.setString(2, search);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
		
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Search s =new Search();
				s.setSearhImg(rset.getString("TITLEIMG"));
				s.setSearchName(rset.getString("PR_NAME"));
				s.setStatus(rset.getString("PR_STATUS"));
			
				list.add(s);
				
				
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println(list);
		
		return list;
		
		
	}
	
}
