// 선경_20200920_v1.1
// 계좌 등록 기능 추가 (미완성)
package com.LetsResell.myPage.model.service;

import java.sql.Connection;

import static com.LetsResell.template.JDBCTemplate.*;

import com.LetsResell.myPage.model.dao.MyPage_dao;
import com.LetsResell.myPage.model.vo.Account;

public class MyPage_service {
	
	public int updateAccount(String memBankname, String memAccountNum, String memAccountholder) {
		
		Connection conn = getConnection();
		
		int result = new MyPage_dao().updateAccount(conn, memBankname, memAccountNum, memAccountholder);

		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

}
