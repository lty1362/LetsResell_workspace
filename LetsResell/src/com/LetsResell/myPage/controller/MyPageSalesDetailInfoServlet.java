package com.LetsResell.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPageSalesService;
import com.LetsResell.myPage.model.vo.Bid;
import com.LetsResell.myPage.model.vo.Sale;

/**
 * Servlet implementation class MyPageSalesDetailInfoServlet
 */
@WebServlet("/detailInfo.mp")
public class MyPageSalesDetailInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageSalesDetailInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sno = Integer.parseInt(request.getParameter("sno"));
		
		ArrayList<Sale> slist = new MyPageSalesService().selectDetailInfo(sno);
		request.setAttribute("slist", slist);
		
		ArrayList<Bid> blist = new MyPageSalesService().selectPurchaseInfo(sno);
		request.setAttribute("blist", blist);
		
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_salesDetailInfo.jsp");
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
