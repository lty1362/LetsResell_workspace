package com.LetsResell.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;
import com.LetsResell.myPage.model.vo.Wishlist;

/**
 * 위시리스트 삭제 Servlet
 */
@WebServlet("/deleteWish.my")
public class MyPageDeleteWishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPageDeleteWishlistServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));	// 로그인된 회원의 번호
		String[] checkArr = request.getParameterValues("checkArr[]");	// 삭제할 제품들의 제품명
		
		int resultNumber = new MyPage_service().deleteWishlist(userNo, checkArr);
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(resultNumber);

	}

}
