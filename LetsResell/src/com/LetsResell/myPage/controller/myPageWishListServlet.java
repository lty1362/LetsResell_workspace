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
import com.LetsResell.myPage.model.vo.Card;
import com.LetsResell.myPage.model.vo.Wishlist;
import com.LetsResell.myPage.model.vo.WishlistPageInfo;

/**
 * 관심상품 페이지 진입 Servlet
 */
@WebServlet("/myPage.wishlist")
public class myPageWishListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public myPageWishListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));	// 로그인된 회원의 번호
		
		// 페이징처리
		int wishlistCount;	// 현재 총 찜 제품 갯수
		int currentPage;	// 현재 페이지 (요청한 페이지)
		int pageLimit;		// 한 페이지 하단에 보여질 페이지 최대갯수
		int wishlistLimit;	// 한 페이지내에 보여질 찜 제품 최대갯수
		
		int maxPage;		// 전체 페이지들 중에서의 가장 마지막 페이지
		int startPage;		// 현재 페이지의 하단에 보여질 페이징 바의 시작 수
		int endPage;		// 현재 페이지의 하단에 보여질 페이징 바의 끝 수
		
		wishlistCount = new MyPage_service().selectWishlistCount(userNo);
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 5;
		wishlistLimit = 10;
		
		maxPage = (int)Math.ceil((double)wishlistCount / wishlistLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		WishlistPageInfo wishlistPage = new WishlistPageInfo(wishlistCount, currentPage, pageLimit, wishlistLimit, maxPage, startPage, endPage);
		request.setAttribute("wishlistPage", wishlistPage);
		
		
		// 위시리스트 조회
		String order = request.getParameter("order");
		
		ArrayList<Wishlist> wishlist = new MyPage_service().selectWishlist(userNo, wishlistPage, order);
		request.setAttribute("wishlist", wishlist);
		request.setAttribute("order", order);
		
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/myPage/myPage_wishListView.jsp");
		view.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
