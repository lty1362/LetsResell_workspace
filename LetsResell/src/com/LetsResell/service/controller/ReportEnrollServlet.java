package com.LetsResell.service.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.ReportService;
import com.LetsResell.service.model.vo.Report;

@WebServlet("/enroll.report")
public class ReportEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReportEnrollServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int writer = 2;
		String title = request.getParameter("title");
		String bigCategory = request.getParameter("bigCategory");
		int pastDeal = Integer.parseInt(request.getParameter("pastDeal"));
		String content = request.getParameter("content");
		
		Report insert = new Report(title, bigCategory, pastDeal, content);
		int result = new ReportService().insertReport(writer, insert);
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/reportForm.service?currentPage=1");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
