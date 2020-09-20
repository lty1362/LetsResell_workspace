package com.LetsResell.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.LetsResell.template.Coolsms;



/**
 * Servlet implementation class AuthPhoneServlet
 */
@WebServlet("/authPhone.me")
public class AuthPhoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthPhoneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		String phoneNumber = request.getParameter("phoneNumber");
		

		
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
	        
	        System.out.println("수신자 번호 : " + phoneNumber);
	        System.out.println("인증번호 : " + numStr);
	       
	        String api_key = "";
	        String api_secret = "";
	        Coolsms coolsms = new Coolsms(api_key, api_secret);

	       
	        HashMap<String, String> params = new HashMap<String, String>();
	        params.put("to", phoneNumber);    // 수신전화번호
	        params.put("from", "");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	        params.put("type", "SMS");
	        params.put("text", "휴대폰인증 테스트 메시지 : 인증번호는" + "["+numStr+"]" + "입니다.");

	        JSONObject result = coolsms.send(params); // 보내기&전송결과받기
	        
	        
	        if (result != null) {
	        	result.put("numStr", numStr);
	        	response.getWriter().print(result);
	        }else {
	        	request.setAttribute("alertMsg", "휴대폰 인증에 실패했습니다..");		
				RequestDispatcher view = request.getRequestDispatcher("views/common/selectId.jsp");
				view.forward(request, response);
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
