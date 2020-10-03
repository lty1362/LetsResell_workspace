package com.LetsResell.common.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.common.member.vo.Filter;
import com.LetsResell.common.member.vo.PageInfo;
import com.LetsResell.product.model.service.ProductService;
import com.LetsResell.product.model.vo.Product;

/**
 * Servlet implementation class FilterSearchServlet
 */
@WebServlet("/filterSearch.do")
public class FilterSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		String brand = request.getParameter("brand");
		String color = request.getParameter("color");
		int price = Integer.parseInt(request.getParameter("price"));
		String order = request.getParameter("order");
		
		Filter filter = new Filter(category, brand, color, price);
		
		
		int listCount = new ProductService().selectFilterCount(filter);		
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int pageLimit = 5;
		int boardLimit = 12;
		int maxPage = (int)Math.ceil((double)listCount / boardLimit);	
		int startPage = (currentPage -1) / pageLimit * pageLimit +1;
		int endPage = startPage + pageLimit -1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<Product> list = new ProductService().filterSearchProduct(filter, pi, order);
		
		filter.setOrder(order);
		
		if(list.isEmpty()) {
			request.getSession().setAttribute("alertMsg", "해당하는 제품이 없습니다.");
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("pi", pi);
			request.setAttribute("list", list);
			request.setAttribute("filter", filter);
			
			request.getRequestDispatcher("views/product/productListView.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
