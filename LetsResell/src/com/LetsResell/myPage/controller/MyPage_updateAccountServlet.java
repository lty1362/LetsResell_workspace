// 선경_20200920_v1.1
// 계좌 등록 기능 추가 (미완성)
// 선경_20200921_v1.3
// 계좌 등록 servlet (완성)
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
 * Servlet implementation class MyPage_updateAccountServlet
 * 계좌정보 등록하는 Servlet
 */
@WebServlet("/updateAccount.my")
public class MyPage_updateAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPage_updateAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
		
		//response.sendRedirect(request.getContextPath() + "/myPage.info");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
