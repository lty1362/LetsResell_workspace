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
import com.LetsResell.myPage.model.vo.Trade;

/**
 * Servlet implementation class MyPage_purchaseCompleteListServlet
 */
@WebServlet("/purchaseCom.mp")
public class MyPage_purchaseCompleteListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPage_purchaseCompleteListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		ArrayList<Bid> blist = new MyPage_purchaseService().purchaseListView(userNo);
		request.setAttribute("blist", blist);
		
		ArrayList<Trade> tlist = new MyPage_purchaseService().selectPurchaseStatus(userNo);
		request.setAttribute("tlist", tlist);
		
		ArrayList<Trade> list = new MyPage_purchaseService().selectPurchaseCom(userNo);
		request.setAttribute("list", list);
		
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_purchaseCompleteList.jsp");
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
