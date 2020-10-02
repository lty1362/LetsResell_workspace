package com.LetsResell.common.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.common.member.vo.Filter;

/**
 * Servlet implementation class FilterSearchServlet
 */
@WebServlet("/filterSearch.do")
public class FilterSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		String brand = request.getParameter("brand");
		String color = request.getParameter("color");
		int price = Integer.parseInt(request.getParameter("price"));
		String condition = request.getParameter("condition");
		String order = request.getParameter("order");
		
		Filter filter = null;
		
		if(order.equals("null")) {
			filter = new Filter(category, brand, color, price, condition);
		} else {
			filter = new Filter(category, brand, color, price, condition, order);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
