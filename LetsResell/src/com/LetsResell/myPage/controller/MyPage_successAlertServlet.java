package com.LetsResell.myPage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 저장 성공 처리하는 Servlet
 */
@WebServlet("/success.my")
public class MyPage_successAlertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MyPage_successAlertServlet() {
        super();
    }
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_successAlert.jsp");
		view.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
		
	}

}
