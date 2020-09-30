package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.InquiryService;
import com.LetsResell.service.model.vo.Inquiry;

@WebServlet("/updateInquiryForm.admin")
public class Admin_inquiryUpdateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_inquiryUpdateFormServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ino = Integer.parseInt(request.getParameter("ino"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		Inquiry inquiry = new InquiryService().selectDetailUpdate(ino);
		request.setAttribute("inquiry", inquiry);
		request.setAttribute("currentPage", currentPage);
		
		request.getRequestDispatcher("views/admin/admin_inquiryDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
