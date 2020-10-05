package com.LetsResell.myPage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LetsResell.myPage.model.service.MyPage_service;

/**
 * 회원 탈퇴하는 Servlet
 */
@WebServlet("/updateMemStatus.my")
public class MyPage_updateMemStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MyPage_updateMemStatusServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));	// 로그인된 회원의 번호
		String pwd = request.getParameter("pwd");						// 기존 비밀번호
		
		int result = new MyPage_service().updateMemStatus(userNo, pwd);
		
		if(result > 0) {
			// 성공
			response.sendRedirect(request.getContextPath() + "/logout.me");
		}else {
			//실패
			response.sendRedirect(request.getContextPath() + "/fail.my");
		}
		
	}
	
}
