package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.ReportService;

@WebServlet("/updateReport.admin")
public class Admin_reportUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_reportUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int rno = Integer.parseInt(request.getParameter("rno"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int result = new ReportService().updateReportAnswer(rno);
		if(result  >0) {
			request.getSession().setAttribute("alertMsg", "처리 성공!!");
			response.sendRedirect(request.getContextPath() + "/reportMain.admin?currentPage="+currentPage+"#title");
		}else {
			request.getSession().setAttribute("alertMsg", "처리 실패..");
			response.sendRedirect(request.getContextPath() + "/reportMain.admin?currentPage="+currentPage+"#title");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
