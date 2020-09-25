// 선경_20200925_v1.4
// 비밀번호 수정 기능 추가(미완성)\
// 선경_20200925_v1.5
// 비밀번호 수정 기능 수정(미완성)
package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;

/**
 * 비밀번호 변경하는 Servlet
 */
@WebServlet("/updatePwd.my")
public class MyPage_updatePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MyPage_updatePwdServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));	// 로그인된 회원의 번호
		String oldPwd = request.getParameter("oldPwd");					// 기존 비밀번호
		String newPwd = request.getParameter("newPwd");					// 새 비밀번호
		
		int result = new MyPage_service().updatePwd(userNo, oldPwd, newPwd);
		
		if(result > 0) {
			// 성공
			response.sendRedirect(request.getContextPath() + "/success.my");
		}else {
			//실패
			response.sendRedirect(request.getContextPath() + "/fail.my");
		}
	}

}
