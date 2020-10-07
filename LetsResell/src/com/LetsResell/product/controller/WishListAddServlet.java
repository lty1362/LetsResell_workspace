package com.LetsResell.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.LetsResell.member.model.vo.Member;
import com.LetsResell.product.model.service.ProductService;

/**
 * Servlet implementation class WishListAddServlet
 */
@WebServlet("/wishList.wl")
public class WishListAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishListAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int prNo = Integer.parseInt(request.getParameter("prNo"));
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		int userNo = m.getUserNo();
		
		int result = new ProductService().wishListAdd(prNo, userNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "찜 성공");
		} else {
			request.getSession().setAttribute("alertMsg", "찜 실패");
		}
		
		response.sendRedirect(request.getContextPath() + "/saleList.sa?prNo=" + prNo + "&currentPage=1");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
