package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.InquiryService;

@WebServlet("/updateInquiry.admin")
public class Admin_inquiryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_inquiryUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int ino = Integer.parseInt(request.getParameter("ino"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		String answer = request.getParameter("answer");
		int result = new InquiryService().updateInquiryAnswer(answer, ino);
		if(result  >0) {
			request.getSession().setAttribute("alertMsg", "답변 성공!!");
			response.sendRedirect(request.getContextPath() + "/inquiryMain.admin?currentPage="+currentPage+"#title");
		}else {
			request.getSession().setAttribute("alertMsg", "답변 실패..");
			response.sendRedirect(request.getContextPath() + "/inquiryMain.admin?currentPage="+currentPage+"#title");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
