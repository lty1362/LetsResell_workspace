package com.LetsResell.search.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LetsResell.search.model.service.SearchService;
import com.LetsResell.search.model.vo.PageInfo;
import com.LetsResell.search.model.vo.Search;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search.bo")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		String search = request.getParameter("search");   
		
		
		int listCount;		
		int currentPage;	
		int pageLimit;	
		int boardLimit;		
		
		int maxPage;		
		int startPage;		
		int endPage;		
		
		
		listCount = new SearchService().selectListCount();
		
	
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
	
		pageLimit = 10;
		
	
		boardLimit = 8;
		
		
	
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		
		
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
	
		endPage = startPage + pageLimit - 1;
		
	
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
	
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		
		
		
		ArrayList<Search> list = new SearchService().searchList(search,pi);
		
		
		
		
		if(list != null) { 
			
			
			HttpSession session = request.getSession();
			
			session.setAttribute("search", search);
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
			
			RequestDispatcher view = request.getRequestDispatcher("views/search/search.jsp");
			view.forward(request, response);
			
			
		}else {
		
			request.setAttribute("alertMsg", "검색결과가 없습니다.");
			response.sendRedirect(request.getContextPath());
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
