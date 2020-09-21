// 선경_20200921_v1.2
// 프로필 수정 기능 추가 (미완성)
package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;

/**
 * Servlet implementation class MyPage_updateMemberServlet
 * 회원정보 변경하는 Servlet
 */
@WebServlet("/updateMember.my")
public class MyPage_updateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPage_updateMemberServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("updateMember.my실행됨");
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");			// 이름
		System.out.println(" name : " + name );
		String userSsn = request.getParameter("userSsn1") + 
					     request.getParameter("userSsn2") + 
					     request.getParameter("userSsn3");	// 생년월일
		System.out.println(" userSsn : " + userSsn );
		
		int result = new MyPage_service().updateMember(name, userSsn);
		
		if(result > 0) {
			System.out.println("성공");
		}else {
			System.out.println("망했음");
		}
		
		response.sendRedirect(request.getContextPath() + "/myPage.info");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
