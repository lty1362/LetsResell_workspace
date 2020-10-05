package com.LetsResell.admin.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.FAQservice;

@WebServlet("/FAQcategoryDelete.admin")
public class Admin_FaqCategoryDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_FaqCategoryDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		String[] check = request.getParameter("checked").split(",");
		int result = new FAQservice().deleteFAQ(check);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "삭제 성공!");
			response.sendRedirect(request.getContextPath() + "/FAQcategory.admin?currentPage=1&category="+category+"#title_FAQ");
		}else{
			request.getSession().setAttribute("alertMsg", "삭제 실패..");
			response.sendRedirect(request.getContextPath() + "/FAQcategory.admin?currentPage=1&category="+category + "#title_FAQ");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
