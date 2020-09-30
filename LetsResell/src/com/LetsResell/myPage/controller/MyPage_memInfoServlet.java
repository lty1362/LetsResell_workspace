// 선경_20200918_v1.0
// 회원정보 화면 추가
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
import com.LetsResell.myPage.model.vo.Address;
import com.LetsResell.myPage.model.vo.Card;

/**
 * Servlet implementation class MyPage_memInfoServlet
 * 왼족 메뉴에서 회원정보 버튼 누르면 응답하는 페이지
 */
@WebServlet("/myPage.info")
public class MyPage_memInfoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPage_memInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
