package com.LetsResell.service.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.InquiryService;
import com.LetsResell.service.model.vo.Inquiry;

@WebServlet("/update.inquiry")
public class InquiryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InquiryUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int inquiryNo = Integer.parseInt(request.getParameter("inquiryNo"));
		String title = request.getParameter("title");
		String bigCategory = request.getParameter("bigCategory");
		String smallCategory = request.getParameter("smallCategory");
		String content = request.getParameter("content");
		Inquiry update = new Inquiry(inquiryNo, title, bigCategory, smallCategory, content);
		int result = new InquiryService().updateInquiry(update);
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/inquiryForm.service?currentPage=1");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
