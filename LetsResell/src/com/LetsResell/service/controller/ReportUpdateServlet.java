package com.LetsResell.service.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.ReportService;
import com.LetsResell.service.model.vo.Report;

@WebServlet("/update.report")
public class ReportUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReportUpdateServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	
		String title = request.getParameter("title");
		String bigCategory = request.getParameter("bigCategory");
		int pastDeal = Integer.parseInt(request.getParameter("pastDeal"));
		String content = request.getParameter("content");
		int rno = Integer.parseInt(request.getParameter("rno"));
		
		Report update = new Report(title, bigCategory, pastDeal, content, rno);
		int result = new ReportService().updateReport(update);
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/reportForm.service?currentPage=1");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
