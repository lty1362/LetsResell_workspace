package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;

/**
 * 프로필 수정하는 Servlet
 */
@WebServlet("/updateMember.my")
public class MyPage_updateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPage_updateMemberServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));		// 로그인된 회원의 번호
		String name = request.getParameter("name");							// 이름
		String userSsn = request.getParameter("userSsn1") + 
					     request.getParameter("userSsn2") + 
					     request.getParameter("userSsn3");					// 생년월일
		
		int result = new MyPage_service().updateMember(userNo, name, userSsn);	
		
		if(result > 0) {
			// 성공
			response.sendRedirect(request.getContextPath() + "/success.my");
		}else {
			//실패
			response.sendRedirect(request.getContextPath() + "/fail.my");
		}
		
	}

}
