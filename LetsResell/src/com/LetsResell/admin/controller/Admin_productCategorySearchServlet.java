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

@WebServlet("/productCategorySearch.admin")
public class Admin_productCategorySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_productCategorySearchServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		String filter = request.getParameter("filter");
		String search = request.getParameter("search");
		
		int listCount; 		
		int currentPage; 	
		int pageLimit; 		
		int boardLimit;		
		int maxPage;		
		int startPage;		
		int endPage;		
		
		listCount = new ProductService().searchListCount(filter, search, category);
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
		ArrayList<Admin_Product> list = new ProductService().searchList(filter, search, category, pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("filter", filter);
		request.setAttribute("search", search);
		request.setAttribute("category", category);
		request.getRequestDispatcher("views/admin/admin_productCategorySearch.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
