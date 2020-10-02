package com.LetsResell.service.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.TradeService;

@WebServlet("/enrollForm.report")
public class ReportEnrollFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReportEnrollFormServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int writer = Integer.parseInt(request.getParameter("userNo"));
    	
    	ArrayList<Integer> saleNo = new TradeService().selectSaleNo(writer);
    	ArrayList<String> saleName = new TradeService().selectSaleName(saleNo);
    	ArrayList<Date> tradeDay = new TradeService().selectTradeDay(writer, saleNo);
    	
		ArrayList<String> tradelist = new ArrayList<>();
		for(int i = 0 ; i < saleName.size() ; i++) {
			String combine = Integer.toString(saleNo.get(i)) + ", " + saleName.get(i) + ", " + tradeDay.get(i);
			tradelist.add(combine);
		}
		request.setAttribute("tradelist", tradelist);
    	request.getRequestDispatcher("views/service/reportEnroll.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
