package com.LetsResell.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LetsResell.member.model.service.MemberService;
import com.LetsResell.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/insert.me")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				request.setCharacterEncoding("UTF-8");
				
			
				String userId = request.getParameter("userId");  
				String userPwd = request.getParameter("userPwd"); 
				String userName = request.getParameter("name");
				String phone = request.getParameter("phone");
				String userSsn = request.getParameter("yy") + request.getParameter("mm") + request.getParameter("dd"); 
				   
				
			
			
				
			
				Member m = new Member(userId, userPwd, userName, phone, userSsn);
				
			
				int result = new MemberService().insertMember(m);
				
				
				
					
					
					RequestDispatcher view = request.getRequestDispatcher("views/member/insertComplete.jsp");
					view.forward(request, response);
				
			
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
