package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.ReportService;
import com.LetsResell.service.model.vo.Report;

@WebServlet("/updateReportForm.admin")
public class Admin_reportUpdateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_reportUpdateFormServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rno = Integer.parseInt(request.getParameter("rno"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		Report report = new ReportService().selectDetailUpdate(rno);
		request.setAttribute("report", report);
		request.setAttribute("currentPage", currentPage);
		
		request.getRequestDispatcher("views/admin/admin_reportDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
