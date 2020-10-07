package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;

/**
 * 카드 정보 삭제
 */
@WebServlet("/deleteCard.my")
public class MyPageDeleteCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPageDeleteCardServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));		// 로그인된 회원의 번호
		String[] cardNameArr = request.getParameterValues("cardNameArr[]");	// 삭제할 카드들의 별칭
		
		int resultNumber = new MyPage_service().deleteCard(userNo, cardNameArr);
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(resultNumber);
	}

}
