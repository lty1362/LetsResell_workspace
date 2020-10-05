package com.LetsResell.myPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPageSalesService;
import com.LetsResell.myPage.model.vo.*;

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
		
		int tno = Integer.parseInt(request.getParameter("tno"));
		String deliveryName = request.getParameter("deliveryName");
		int deliveryNo = Integer.parseInt(request.getParameter("deliveryNo"));
		
		Sale s = new Sale();
		s.setTradeNo(tno);
		s.setTradeService(deliveryName);
		s.setTradeNum(deliveryNo);
		
		int result = new MyPageSalesService().updateDelivery(s);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
