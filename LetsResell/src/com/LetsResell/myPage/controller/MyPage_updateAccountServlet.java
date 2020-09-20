// 선경_20200920_v1.1
// 계좌 등록 기능 추가 (미완성)
package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;
import com.LetsResell.myPage.model.vo.Account;

/**
 * Servlet implementation class MyPage_updateAccountServlet
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

		// update문
		request.setCharacterEncoding("UTF-8");
		
		
		String memBankname = request.getParameter("memBankname");	// 은행명
		System.out.println(" memBankname : " + memBankname );
		String memAccountNum = request.getParameter("memAccountNum");	// 계좌번호
		System.out.println(" memAccountNum : " + memAccountNum );
		String memAccountholder = request.getParameter("memAccountholder");	// 예금주
		System.out.println(" memAccountholder : " + memAccountholder );
		
		int result = new MyPage_service().updateAccount(memBankname, memAccountNum, memAccountholder);
		
		if(result > 0) {
			System.out.println("성공");
		}else {
			System.out.println("망했음");
		}
		
		response.sendRedirect(request.getContextPath() + "/myPage.info");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
