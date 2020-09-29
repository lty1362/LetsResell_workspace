package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.FAQservice;
import com.LetsResell.service.model.vo.FAQ;

@WebServlet("/FAQdetail.admin")
public class Admin_FaqDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_FaqDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int fno = Integer.parseInt(request.getParameter("fno"));
		
		FAQ faq = new FAQservice().detailFAQ(fno);
		request.setAttribute("faq", faq);
		request.getRequestDispatcher("views/admin/admin_FAQdetail.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
