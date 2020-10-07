package com.LetsResell.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.product.model.service.ProductService;

@WebServlet("/insertBid.product")
public class InsertBidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertBidServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int saleNo = Integer.parseInt(request.getParameter("saleNo"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		int result = new ProductService().insertBid(saleNo, userNo, price);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
