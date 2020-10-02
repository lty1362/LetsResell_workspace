package com.LetsResell.service.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.ReportService;
import com.LetsResell.service.model.service.TradeService;
import com.LetsResell.service.model.vo.Report;
import com.LetsResell.service.model.vo.Trade;

@WebServlet("/detail.report")
public class ReportDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReportDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rno = Integer.parseInt(request.getParameter("rno"));
		int writer = Integer.parseInt(request.getParameter("writer"));
		Report list = new ReportService().selectDetail(rno, writer);
		ArrayList<Trade> trade = new TradeService().selectTrade(writer);
		
		ArrayList<Integer> saleNo = new TradeService().selectSaleNo(writer);
    	ArrayList<String> saleName = new TradeService().selectSaleName(saleNo);
    	ArrayList<Date> tradeDay = new TradeService().selectTradeDay(writer, saleNo);
    	
		ArrayList<String> tradelist = new ArrayList<>();
		for(int i = 0 ; i < saleName.size() ; i++) {
			String combine = Integer.toString(saleNo.get(i)) + ", " + saleName.get(i) + ", " + tradeDay.get(i);
			tradelist.add(combine);
		}
		request.setAttribute("tradelist", tradelist);
		request.setAttribute("list", list);
		request.setAttribute("trade", trade);
		request.getRequestDispatcher("views/service/reportDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
