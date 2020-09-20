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
 * Servlet implementation class AuthPwd2Servlet
 */
@WebServlet("/authCheckId.me")
public class AuthCheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthCheckIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String userId = request.getParameter("userId"); 
		
		
	
		
		Member m =new MemberService().selectByUserId(userId);
		
		HttpSession session = request.getSession();
		
		if(m != null) { 
			
			session.setAttribute("m", m);
		
			RequestDispatcher view = request.getRequestDispatcher("views/member/authPwdByPhone.jsp");
			view.forward(request, response);
			
			
			
		}else {
			
			session.setAttribute("alertMsg", "등록한계정이 없습니다.");
			
			RequestDispatcher view = request.getRequestDispatcher("views/member/authPwd.jsp");
			view.forward(request, response);
			
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
