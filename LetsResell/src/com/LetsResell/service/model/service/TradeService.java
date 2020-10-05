package com.LetsResell.service.model.service;

import static com.LetsResell.template.JDBCTemplate.close;
import static com.LetsResell.template.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import com.LetsResell.service.model.dao.TradeDao;
import com.LetsResell.service.model.vo.Trade;

public class TradeService {

	public ArrayList<Trade> selectTrade(int writer) {
		Connection conn = getConnection();
		ArrayList<Trade> trade = new TradeDao().selectTrade(conn, writer);
		close(conn);
		return trade;
	}
	
	public ArrayList<Integer> selectSaleNo(int writer) {
		Connection conn = getConnection();
		ArrayList<Integer> saleNo = new TradeDao().selectSaleNo(conn, writer);
		close(conn);
		return saleNo;
	}
	
	public ArrayList<String> selectSaleName(ArrayList<Integer> saleNo) {
		Connection conn = getConnection();
		ArrayList<String> saleName = new TradeDao().selectSaleName(conn, saleNo);
		close(conn);
		return saleName;
	}
	
	public ArrayList<Date> selectTradeDay(int writer, ArrayList<Integer> saleNo) {
		Connection conn = getConnection();
		ArrayList<Date> tradeDay = new TradeDao().selectTradeDay(conn, writer, saleNo);
		close(conn);
		return tradeDay;
	}
	
	public ArrayList<Trade> selectMemberDetail(int mno){
		Connection conn = getConnection();
		ArrayList<Trade> tradeList = new TradeDao().selectMemberDetail(conn, mno);
		close(conn);
		return tradeList;
	}
	
	
}
