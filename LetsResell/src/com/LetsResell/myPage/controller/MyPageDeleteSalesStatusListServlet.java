package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPageSalesService;

/**
 * Servlet implementation class MyPageDeleteSalesStatusListServlet
 */
@WebServlet("/deleteTrade.mp")
public class MyPageDeleteSalesStatusListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageDeleteSalesStatusListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int tno = Integer.parseInt(request.getParameter("tno"));
		int sno = Integer.parseInt(request.getParameter("sno"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		System.out.println(tno);
		
		int tResult = new MyPageSalesService().deleteTrade(tno);
		int result = new MyPageSalesService().deleteList(sno);
		
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
