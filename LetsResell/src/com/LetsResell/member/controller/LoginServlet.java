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
 * Servlet implementation class loginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		String userId = request.getParameter("userId");   // "사용자가입력한아이디"
		String userPwd = request.getParameter("userPwd"); // "사용자가입력한비밀번호"
		
		
		Member loginUser = new MemberService().loginMember(userId, userPwd);
		
		
		if(loginUser != null) { // 로그인 성공 => index페이지
			
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			
			response.sendRedirect(request.getContextPath());
			
			
		}else { // 로그인 실패 => 에러페이지
			
			// 응답할 뷰에 필요한 데이터 request의 attribute에 담기
			request.setAttribute("errorMsg", "로그인에 실패했습니다.");
			
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
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
