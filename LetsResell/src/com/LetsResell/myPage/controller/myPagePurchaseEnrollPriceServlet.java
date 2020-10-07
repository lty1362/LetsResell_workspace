package com.LetsResell.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_purchaseService;
import com.LetsResell.myPage.model.vo.Bid;

/**
 * Servlet implementation class myPagePurchaseEnrollPriceServlet
 */
@WebServlet("/enrollPrice.mp")
public class myPagePurchaseEnrollPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myPagePurchaseEnrollPriceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bidNo = Integer.parseInt(request.getParameter("bidNo"));
		int enrollPrice = Integer.parseInt(request.getParameter("enrollPrice"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		Bid b = new Bid();
		b.setBidNo(bidNo);
		b.setBidPrice(enrollPrice);
		
		int result = new MyPage_purchaseService().enrollPrice(b);
		
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
