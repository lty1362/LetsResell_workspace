package com.LetsResell.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.admin.model.service.MemberService;
import com.LetsResell.admin.model.service.SaleService;
import com.LetsResell.admin.model.vo.Admin_Member;
import com.LetsResell.admin.model.vo.Admin_Sale;
import com.LetsResell.service.model.service.TradeService;
import com.LetsResell.service.model.vo.Trade;

@WebServlet("/memberDetail.admin")
public class Admin_memberDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_memberDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mno = Integer.parseInt(request.getParameter("mno"));
		ArrayList<Admin_Sale> saleList = new SaleService().selectMemberDetail(mno);
		ArrayList<Trade> tradeList = new TradeService().selectMemberDetail(mno);
		Admin_Member mem = new MemberService().selectDetailMember(mno);
		request.setAttribute("saleList", saleList);
		request.setAttribute("tradeList", tradeList);
		request.setAttribute("mem", mem);
		request.getRequestDispatcher("views/admin/admin_memberDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
