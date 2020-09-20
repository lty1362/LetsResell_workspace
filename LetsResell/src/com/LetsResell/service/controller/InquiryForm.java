package com.LetsResell.service.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.InquiryService;
import com.LetsResell.service.model.vo.Inquiry;
import com.LetsResell.service.model.vo.PageInfo;

@WebServlet("/inquiryForm.service")
public class InquiryForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InquiryForm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int writer = 3;
		
		int listCount; 		
		int currentPage; 	
		int pageLimit; 		
		int boardLimit;		
		
		int maxPage;		
		int startPage;		
		int endPage;		
		
		listCount = new InquiryService().selectListCount(writer);
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 10;
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		startPage = (currentPage-1)/pageLimit * pageLimit +1;
		endPage = startPage+pageLimit-1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		ArrayList<Inquiry> list = new InquiryService().selectList(writer, pi);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/service/inquiryMain.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
