package com.LetsResell.myPage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LetsResell.myPage.model.service.MyPage_service;
import com.LetsResell.myPage.model.vo.Account;

/**
 * 계좌정보 등록하는 Servlet
 */
@WebServlet("/updateAccount.my")
public class MyPage_updateAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPage_updateAccountServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
			
		String userId = request.getParameter("userId");	//	로그인된 아이디
		String memBankname = request.getParameter("memBankname");	// 은행명
		String memAccountNum = request.getParameter("memAccountNum");	// 계좌번호
		String memAccountholder = request.getParameter("memAccountholder");	// 예금주
			
		int result = new MyPage_service().updateAccount(userId, memBankname, memAccountNum, memAccountholder);
			
		if(result > 0) {
			// 성공
			response.sendRedirect(request.getContextPath() + "/success.my");
		}else {
			//실패
			response.sendRedirect(request.getContextPath() + "/fail.my");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
