package com.LetsResell.service.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.ReportService;
import com.LetsResell.service.model.vo.Report;

@WebServlet("/detail.report")
public class ReportDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReportDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ino = Integer.parseInt(request.getParameter("ino"));
		int writer = Integer.parseInt(request.getParameter("writer"));
		Report list = new ReportService().selectDetail(ino, writer);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/service/reportDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
