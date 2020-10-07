package com.LetsResell.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.admin.model.service.ProductService;
import com.LetsResell.admin.model.vo.Admin_PageInfo;
import com.LetsResell.admin.model.vo.Admin_Product;

@WebServlet("/productMain.admin")
public class Admin_productListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_productListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount; 		
		int currentPage; 	
		int pageLimit; 		
		int boardLimit;		
		int maxPage;		
		int startPage;		
		int endPage;	
		
		listCount = new ProductService().selectListCount();
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 5;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		startPage = (currentPage-1)/pageLimit * pageLimit +1;
		endPage = startPage+pageLimit-1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		Admin_PageInfo pi = new Admin_PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Admin_Product> list = new ProductService().selectList(pi);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/admin/admin_productMain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
