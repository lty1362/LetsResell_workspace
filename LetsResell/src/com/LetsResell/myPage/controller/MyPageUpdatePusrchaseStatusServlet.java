package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_purchaseService;

/**
 * Servlet implementation class MyPageUpdatePusrchaseStatusServlet
 */
@WebServlet("/updateStatus.mp")
public class MyPageUpdatePusrchaseStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageUpdatePusrchaseStatusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int tno = Integer.parseInt(request.getParameter("tno"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int sno = Integer.parseInt(request.getParameter("sno"));
		
		System.out.println(sno);
		
		int result = new MyPage_purchaseService().updateStatus(tno);
		int sResult = new MyPage_purchaseService().updateSalesStatus(sno);
		
		System.out.println(sResult);
		
		response.sendRedirect(request.getContextPath() + "/purchaseStatus.mp?userNo=" + userNo); 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
