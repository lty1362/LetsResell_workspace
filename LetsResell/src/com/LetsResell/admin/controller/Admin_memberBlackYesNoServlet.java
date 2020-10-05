package com.LetsResell.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.admin.model.service.MemberService;

@WebServlet("/blackYesNo.admin")
public class Admin_memberBlackYesNoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_memberBlackYesNoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String blackYN = new MemberService().blackYN(userNo);
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(blackYN);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
