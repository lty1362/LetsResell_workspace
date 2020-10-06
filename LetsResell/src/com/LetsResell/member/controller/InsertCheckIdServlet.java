package com.LetsResell.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.LetsResell.member.model.service.MemberService;
import com.LetsResell.member.model.vo.Member;

/**
 * Servlet implementation class InsertCheckIdServlet
 */
@WebServlet("/insertCheckId.me")
public class InsertCheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCheckIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String userId = request.getParameter("userId"); 
			
		
		Member m =new MemberService().selectByUserId(userId);
		
	
		
		HttpSession session = request.getSession();
		 JSONObject obj = new JSONObject();
	        
     	
	        
	    
	        if(m != null ) {
	        	obj.put("loginUserId", m.getUserId());
	        	response.getWriter().print(obj);
	        }else {
	        	obj.put("loginUser", "사용해도 됩니다.");
	        	response.getWriter().print(obj);
	        }
	        	
	        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
