package com.LetsResell.myPage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_purchaseService;

/**
 * Servlet implementation class MyPageDeletePurchaseServlet
 */
@WebServlet("/deleteDetail.mp")
public class MyPageDeletePurchaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageDeletePurchaseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bno = Integer.parseInt(request.getParameter("bno")); 
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		int result = new MyPage_purchaseService().deleteDetail(bno);
		
		response.sendRedirect(request.getContextPath() + "/purchaseDetail.mp?userNo=" + userNo);				
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
