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
 * Servlet implementation class ChangePwdServlet
 */
@WebServlet("/changePwd.me")
public class ChangePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userName= request.getParameter("userName");
		String newPwd = request.getParameter("newPwd");
		
		int result = new MemberService().changePwdMember(newPwd, userName);
		
		HttpSession session = request.getSession();
		
		if(result >0) {
			

		
			
			RequestDispatcher view = request.getRequestDispatcher("views/member/changePwdSuccess.jsp");
			view.forward(request, response);
			
			
		}else { // 실패
			
			request.setAttribute("alertMsg", "비밀번호 변경에 실패했습니다.");
			
			response.sendRedirect(request.getContextPath() + "/changePwdForm.me");			
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
