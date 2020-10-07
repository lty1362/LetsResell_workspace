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
import com.LetsResell.myPage.model.vo.Sale;

/**
 * Servlet implementation class MyPage_salesDetailServlet
 */
@WebServlet("/salesDetail.mp")
public class MyPage_salesDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPage_salesDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		ArrayList<Sale> list = new MyPageSalesService().salesListView(userNo);
		request.setAttribute("list", list);
		
		ArrayList<Sale> slist = new MyPageSalesService().selectTradeList(userNo);
		request.setAttribute("slist", slist);
		
		ArrayList<Sale> sclist = new MyPageSalesService().selectSalesCom(userNo);
		request.setAttribute("sclist", sclist);
		 
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_salesDetailList.jsp");
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
