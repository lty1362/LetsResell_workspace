package com.LetsResell.admin.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.NoticeService;

@WebServlet("/noticeSearchDelete.admin")
public class Admin_noticeSearchDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_noticeSearchDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String filter = request.getParameter("filter");
		String search = request.getParameter("search");
		String[] check = request.getParameter("checked").split(",");
		int result = new NoticeService().noticeDelete(check);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "삭제 성공!");
			response.sendRedirect(request.getContextPath() + "/noticeSearch.admin?currentPage=1&filter="+filter+"&search="+search);
		}else{
			request.getSession().setAttribute("alertMsg", "삭제 실패..");
			response.sendRedirect(request.getContextPath() + "/noticeSearch.admin?currentPage=1&filter="+filter+"&search="+search);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
