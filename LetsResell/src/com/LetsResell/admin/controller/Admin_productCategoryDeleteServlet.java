package com.LetsResell.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.admin.model.service.ProductService;
import com.LetsResell.service.model.service.NoticeService;

@WebServlet("/productCategoryDelete.admin")
public class Admin_productCategoryDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_productCategoryDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		String[] check = request.getParameter("checked").split(",");
		int result = new ProductService().deleteProduct(check);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "삭제 성공!");
			response.sendRedirect(request.getContextPath() + "/productCategory.admin?currentPage=1&category="+category);
		}else{
			request.getSession().setAttribute("alertMsg", "삭제 실패..");
			response.sendRedirect(request.getContextPath() + "/productCategory.admin?currentPage=1&category="+category);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
