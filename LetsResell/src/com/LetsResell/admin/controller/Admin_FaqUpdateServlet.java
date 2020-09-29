package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.FAQservice;

@WebServlet("/updateFAQ.admin")
public class Admin_FaqUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_FaqUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int fno = Integer.parseInt(request.getParameter("fno"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int result = new FAQservice().updateFAQ(fno, title, content);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "FAQ 수정 성공!!");
			response.sendRedirect(request.getContextPath() + "/FAQmain.admin?currentPage=1");
		}else {
			request.getSession().setAttribute("alertMsg", "FAQ 수정 실패..");
			response.sendRedirect(request.getContextPath() + "/FAQmain.admin?currentPage=1");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
