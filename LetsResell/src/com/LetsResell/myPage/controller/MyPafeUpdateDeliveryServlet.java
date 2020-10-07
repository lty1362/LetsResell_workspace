package com.LetsResell.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPageSalesService;
import com.LetsResell.myPage.model.vo.*;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

/**
 * Servlet implementation class MyPafeUpdateDeliveryServlet
 */
@WebServlet("/updateDelivery.mp")
public class MyPafeUpdateDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPafeUpdateDeliveryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int tno = Integer.parseInt(request.getParameter("tno"));
		String deliveryName = request.getParameter("deliveryName");
		int deliveryNo = Integer.parseInt(request.getParameter("deliveryNo"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		System.out.println(tno);
		System.out.println(deliveryName);
		System.out.println(deliveryNo);
		
		Sale s = new Sale();
		s.setTradeNo(tno);
		s.setTradeService(deliveryName);
		s.setTradeNum(deliveryNo);
		
		int result = new MyPageSalesService().updateDelivery(s);
		
		ArrayList<Address> alist = new MyPageSalesService().selectPAddress(tno);
		request.setAttribute("alist", alist);
		
		System.out.println(alist);
		
		ArrayList<Sale> slist = new MyPageSalesService().selectTradeList(userNo);
		request.setAttribute("slist", slist);
		
		response.sendRedirect(request.getContextPath() + "/salesStatus.mp?userNo=" + userNo);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
