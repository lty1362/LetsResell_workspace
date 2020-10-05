package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.NoticeService;

@WebServlet("/enrollNotice.admin")
public class Admin_noticeEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_noticeEnrollServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int result = new NoticeService().insertNotice(title, content);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "등록 성공!");
			response.sendRedirect(request.getContextPath() + "/noticeMain.admin?currentPage=1");
		}else{
			request.getSession().setAttribute("alertMsg", "등록 실패..");
			response.sendRedirect(request.getContextPath() + "/noticeMain.admin?currentPage=1");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
