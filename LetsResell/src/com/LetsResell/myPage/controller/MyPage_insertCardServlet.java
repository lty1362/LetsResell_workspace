// 선경_20200921_v1.2
// 카드 등록 기능 추가 (미완성)
package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;

/**
 * Servlet implementation class MyPage_insertCardServlet
 * 카드 정보 등록하는 Servlet
 */
@WebServlet("/insertCard.my")
public class MyPage_insertCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPage_insertCardServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// insert문
		System.out.println("insertCard.my 실행됨");
		
		request.setCharacterEncoding("UTF-8");
		
		String cardName = request.getParameter("cardName"); // 카드별칭
		System.out.println("cardName : " + cardName);
		String cardNumber = request.getParameter("cardNumber");	// 카드번호
		System.out.println("cardNumber : " + cardNumber);
		String cardValidate = request.getParameter("cardValidate1") + request.getParameter("cardValidate2"); // 유효기간
		System.out.println("cardValidate : " + cardValidate);
		String cardMemBirth = request.getParameter("cardMemBirth");	// 생년월일
		System.out.println("cardMemBirth : " + cardMemBirth);
		int cardPwd = Integer.parseInt(request.getParameter("cardPwd")); // 카드비밀번호
		System.out.println("cardPwd : " + cardPwd);
		
		int result = new MyPage_service().insertCard(cardName, cardNumber, cardValidate, cardMemBirth, cardPwd);
		
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
