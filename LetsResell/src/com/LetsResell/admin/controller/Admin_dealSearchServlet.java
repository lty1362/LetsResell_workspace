package com.LetsResell.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.admin.model.service.SaleService;
import com.LetsResell.admin.model.vo.Admin_PageInfo;
import com.LetsResell.admin.model.vo.Admin_Sale;

@WebServlet("/saleSearch.admin")
public class Admin_dealSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_dealSearchServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String filter = request.getParameter("filter");
		String search = request.getParameter("search");
		
		int listCount; 		
		int currentPage; 	
		int pageLimit; 		
		int boardLimit;		
		int maxPage;		
		int startPage;		
		int endPage;		
		
		listCount = new SaleService().searchListCount(filter, search);
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 10;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		startPage = (currentPage-1)/pageLimit * pageLimit +1;
		endPage = startPage+pageLimit-1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		Admin_PageInfo pi = new Admin_PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Admin_Sale> list = new SaleService().searchList(filter, search, pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("filter", filter);
		request.setAttribute("search", search);
		request.getRequestDispatcher("views/admin/admin_dealSearch.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
