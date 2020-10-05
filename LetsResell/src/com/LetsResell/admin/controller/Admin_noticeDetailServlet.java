package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.NoticeService;
import com.LetsResell.service.model.vo.Notice;

@WebServlet("/noticeDetail.admin")
public class Admin_noticeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_noticeDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int nno = Integer.parseInt(request.getParameter("nno"));
		Notice notice = new NoticeService().selectDetail(nno);
		request.setAttribute("notice", notice);
		request.getRequestDispatcher("views/admin/admin_noticeDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
