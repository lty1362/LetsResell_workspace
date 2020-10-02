package com.LetsResell.common.controller;

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

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/searchProduct.do")
public class SearchProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String search = request.getParameter("search");
		
		// 페이징 처리
		int listCount;		// 현재 총 게시글 갯수
		int currentPage;	// 현재 페이지(요청한 페이지)
		int pageLimit;		// 한 페이지 하단에 보여질 페이지 최대 갯수
		int boardLimit;		// 한 페이지 내에 보여질 게시글 최대 갯수
		
		int maxPage;		// 전체 페이지등 중 가장 마지막 페이지
		int startPage;		// 현재 페이지 하단에 보여질 페이징 바의 시작수
		int endPage;		// 현재 페이지 하단에 보여질 페이징 바의 끝 수
		
		// * listCount: 총 게시글 갯수
		listCount = new ProductService().selectSearchListCount(search);
		
		// * currentPage: 현재 페이지(요청한 페이지)
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		// * pageLimit: 한 페이지 하단에 보여질 페이지 최대 갯수(페이지 목록들 몇 개 단위)
		pageLimit = 5;
		
		// * boardLimit: 한 페이지에 보여질 게시글 최대 갯수
		boardLimit = 12;
		
		// * maxPage: 총 페이지 수(마지막 페이지)
		/*
		 *	listCount, boardLimit에 영향을 받음
		 *	총 게시글 갯수(실수) / boardLimit = 실수값(올림처리): maxPage 
		 * 
		 */
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		// * startPage: 현재 페이지에 보여질 페이징 바의 시작수
		/*
		 * pageLimit, currentPage에 영향을 받음
		 */
		startPage = (currentPage -1) / pageLimit * pageLimit +1;
		
		// * endPage : 현재 페이지에 보여지는 페이징 바의 끝 수
		/*
		 * pageLimit = 10
		 * 
		 * startPage = 1, endPage = 10
		 * startPage = 11, endPage = 20
		 */
		
		endPage = startPage + pageLimit -1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		// 페이징 정보들을 하나의 공간에 담아 보내기
		// 1. 페이징바 만들 때 필요한 PageInfo 객체 생성
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<Product> list = new ProductService().searchProduct(search, pi);
		
		if(list.isEmpty()) {	// 검색된 값이 없을 때
			request.getSession().setAttribute("alertMsg", "해당하는 " + search + " 제품이 없습니다.");
			response.sendRedirect(request.getContextPath());
		} else {				// 검색된 값이 있을 때
			request.setAttribute("search", search);
			request.setAttribute("pi", pi);
			request.setAttribute("list", list);
			
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
