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
import com.LetsResell.myPage.model.service.MyPage_service;
import com.LetsResell.myPage.model.vo.Address;
import com.LetsResell.myPage.model.vo.Sale;
import com.LetsResell.myPage.model.vo.Trade;

/**
 * Servlet implementation class MyPagePurchaseStatusInfoServlet
 */
@WebServlet("/statusInfo.mp")
public class MyPagePurchaseStatusInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPagePurchaseStatusInfoServlet() {
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
		
		ArrayList<Trade> list = new MyPage_purchaseService().selectStatusInfo(tno);
		request.setAttribute("list", list);
		
		ArrayList<Sale> slist = new MyPage_purchaseService().saleInfo(sno);
		request.setAttribute("slist", slist);
		
		ArrayList<Address> addressList = new MyPage_service().selectAddress(userNo);
		request.setAttribute("addressList", addressList);
		
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_purchaseStatusInfo.jsp");
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
