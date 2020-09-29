package com.LetsResell.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.FAQservice;
import com.LetsResell.service.model.vo.FAQ;
import com.LetsResell.service.model.vo.PageInfo;

@WebServlet("/FAQcategory.admin")
public class Admin_FAQcategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_FAQcategoryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		int listCount;
		int currentPage; 	
		int pageLimit; 		
		int boardLimit;		
		
		int maxPage;		
		int startPage;		
		int endPage;		
		
		listCount = new FAQservice().searchListCount(category);
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 10;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		startPage = (currentPage-1)/pageLimit * pageLimit +1;
		endPage = startPage+pageLimit-1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<FAQ> list = new FAQservice().searchList(category, pi);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("category", category);
		request.getRequestDispatcher("views/admin/admin_FAQcategory.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
