package com.LetsResell.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_purchaseService;
import com.LetsResell.myPage.model.service.MyPage_service;
import com.LetsResell.myPage.model.vo.Address;
import com.LetsResell.myPage.model.vo.Bid;
import com.LetsResell.myPage.model.vo.Card;

/**
 * 회원정보 페이지 진입 Servlet
 */
@WebServlet("/myPage.info")
public class MyPage_memInfoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public MyPage_memInfoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));	// 로그인된 회원의 번호
		
		// 등록된 카드 조회
		ArrayList<Card> cardList = new MyPage_service().selectCard(userNo);
		request.setAttribute("cardList", cardList);
		
		// 등록된 주소 조회
		ArrayList<Address> addressList = new MyPage_service().selectAddress(userNo);
		request.setAttribute("addressList", addressList);	
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_memInfoView.jsp");
		view.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
