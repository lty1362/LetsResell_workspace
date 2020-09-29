package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.admin.model.service.ProductService;
import com.LetsResell.admin.model.vo.Admin_Product;

@WebServlet("/productDetail.admin")
public class Admin_productDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_productDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno= Integer.parseInt(request.getParameter("productCode"));
		Admin_Product product = new ProductService().selectDetail(pno);
		request.setAttribute("product", product);
		request.getRequestDispatcher("views/admin/admin_productDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
