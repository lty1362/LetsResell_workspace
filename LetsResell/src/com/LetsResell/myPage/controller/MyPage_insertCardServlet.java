// 선경_20200921_v1.2
// 카드 등록 기능 추가 (미완성)
// 선경_20200925_v1.4
// 카드 등록 기능 수정(미완성)
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
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));		// 로그인된 회원의 번호
		String cardName = request.getParameter("cardName"); 				// 카드별칭
		String cardNumber = request.getParameter("cardNumber");				// 카드번호
		String cardValidate = request.getParameter("cardValidate1") +
							  request.getParameter("cardValidate2"); 		// 유효기간
		String cardMemBirth = request.getParameter("cardMemBirth");			// 생년월일
		int cardPwd = Integer.parseInt(request.getParameter("cardPwd")); 	// 카드비밀번호
		
		// 카드 등록
		int result1 = new MyPage_service().insertCard(userNo, cardName, cardNumber, cardValidate, cardMemBirth, cardPwd);
		// 회원정보에 수정일 업데이트
		int result2 = new MyPage_service().updateModifyDate(userNo);
		
		if(result1 > 0 && result2 > 0) {
			// 성공
			response.sendRedirect(request.getContextPath() + "/success.my");
		}else {
			//실패
			response.sendRedirect(request.getContextPath() + "/fail.my");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
