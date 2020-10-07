package com.LetsResell.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.dao.MyPage_purchaseDao;
import com.LetsResell.myPage.model.service.MyPage_purchaseService;
import com.LetsResell.myPage.model.vo.*;

/**
 * Servlet implementation class MyPage_purchaseDetailServlet
 */
@WebServlet("/purchaseDetail.mp")
public class MyPage_purchaseDetailListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPage_purchaseDetailListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		ArrayList<Trade> tlist = new MyPage_purchaseService().selectPurchaseStatus(userNo);
		request.setAttribute("tlist", tlist);
		
		ArrayList<Trade> list = new MyPage_purchaseService().selectPurchaseCom(userNo);
		request.setAttribute("list", list);
		
		ArrayList<Bid> blist = new MyPage_purchaseService().purchaseListView(userNo);
		request.setAttribute("blist", blist);
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_purchaseDetailList.jsp");
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
