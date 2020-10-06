package com.LetsResell.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.common.member.vo.PageInfo;
import com.LetsResell.product.model.service.ProductService;
import com.LetsResell.product.model.vo.Product;
import com.LetsResell.product.model.vo.Sale;

/**
 * Servlet implementation class SaleListViewServlet
 */
@WebServlet("/saleList.sa")
public class SaleListViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaleListViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int prNo = Integer.parseInt(request.getParameter("prNo"));
		
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		int maxPage;
		int startPage;
		int endPage;
		
		listCount = new ProductService().selectSaleListCount(prNo);
		
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		pageLimit = 5;
		boardLimit = 12;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage -1) / pageLimit * pageLimit +1;
		endPage = startPage + pageLimit -1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<Sale> list = new ProductService().selectSaleList(prNo, pi);
		
		
		if(list.isEmpty()) {
			listCount = new ProductService().selectProductImgListCount(prNo);
			pageLimit = 4;
			boardLimit = 3;
			
			maxPage = (int)Math.ceil((double)listCount / boardLimit);
			startPage = (currentPage -1) / pageLimit * pageLimit +1;
			endPage = startPage + pageLimit -1;
			
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			
			pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
			
			Product p = new ProductService().selectProductInfo(prNo);
			ArrayList<Product> imgList = new ProductService().selectProductImgList(prNo, pi);
					
			request.setAttribute("p", p);
			request.setAttribute("pi", pi);
			request.setAttribute("imgList", imgList);
			
			request.getRequestDispatcher("views/product/noDataListView.jsp").forward(request, response);
		} else {
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
			request.getRequestDispatcher("views/product/saleListView.jsp").forward(request, response);
			
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
