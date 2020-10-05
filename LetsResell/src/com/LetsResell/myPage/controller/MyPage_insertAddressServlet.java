package com.LetsResell.myPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.myPage.model.service.MyPage_service;

/**
 * 배송지 정보 등록하는 Servlet
 */
@WebServlet("/insertAddress.my")
public class MyPage_insertAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPage_insertAddressServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));				// 로그인된 회원의 번호
		String addressName = request.getParameter("addressName");					// 주소 별칭
		int addressCode = Integer.parseInt(request.getParameter("addressCode"));	// 우편 번호
		String addressMain = request.getParameter("addressMain");					// 도로명 주소
		String addressDetail = request.getParameter("addressDetail");				// 상세 주소
		String addressPhone = request.getParameter("addressPhone");					// 핸드폰 번호
		String addressMessage = request.getParameter("addressMessage"); 			// 배송 메세지
		String addressBasic = request.getParameter("addressBasic");					// 기본 배송지 등록 여부  (on/null로 표시됨)
		
		if(addressBasic == null) {
			addressBasic = "N";
		}else {
			addressBasic = "Y";
		}
		
		// 배송지 등록
		int result1 = new MyPage_service().insertAddress(userNo, addressName, addressCode, addressMain,
													    addressDetail, addressPhone, addressMessage,
													    addressBasic);
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

}
