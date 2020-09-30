package com.LetsResell.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.admin.model.service.ProductService;
import com.LetsResell.service.model.service.NoticeService;

@WebServlet("/productSearchDelete.admin")
public class Admin_productSearchDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_productSearchDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String filter = request.getParameter("filter");
		String search = request.getParameter("search");
		String[] check = request.getParameter("checked").split(",");
		int result = new ProductService().deleteProduct(check);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "삭제 성공!");
			response.sendRedirect(request.getContextPath() + "/productSearch.admin?currentPage=1&filter="+filter+"&search="+search);
		}else{
			request.getSession().setAttribute("alertMsg", "삭제 실패..");
			response.sendRedirect(request.getContextPath() + "/productSearch.admin?currentPage=1&filter="+filter+"&search="+search);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
