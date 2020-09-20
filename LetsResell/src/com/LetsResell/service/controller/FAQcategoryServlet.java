package com.LetsResell.service.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.FAQservice;
import com.LetsResell.service.model.vo.FAQ;
import com.LetsResell.service.model.vo.PageInfo;

@WebServlet("/FAQcategory.service")
public class FAQcategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FAQcategoryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		
		int listCount;
		int currentPage; 	// 현재 사용자가 요청한 페이지
		int pageLimit; 		// 한 페이지 하단에 보여질 최대 페이지 수
		int boardLimit;		// 한 페이지에 보여질 최대 게시글 수
		
		// 위 4개의 값을 이용해 값을 구해내는 것 
		int maxPage;		// 전체 페이지들 중에서의 가장 마지막 페이지
		int startPage;		// 현재 페이지의 하단에 보여질 페이징 바의 시작 수
		int endPage;		// 현재 페이지의 하단에 보여질 페이징 바의 끝 수
		
		listCount = new FAQservice().searchListCount(category);
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 10;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		startPage = (currentPage-1)/pageLimit * pageLimit +1;
		endPage = startPage+pageLimit-1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		// 1. Paging 정보담긴 객체
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		// 2. 현재 요청한 페이지(currentPage)에 보여질 게시글 리스트 조회해오기
		ArrayList<FAQ> list = new FAQservice().searchList(category, pi);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.setAttribute("category", category);
		request.getRequestDispatcher("views/service/FAQcategory.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
