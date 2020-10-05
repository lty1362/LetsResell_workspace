package com.LetsResell.service.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.LetsResell.service.model.service.InquiryService;
import com.LetsResell.service.model.vo.Inquiry;

@WebServlet("/enroll.inquiry")
public class InquiryEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InquiryEnrollServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int writer = Integer.parseInt(request.getParameter("userNo"));
		String title = request.getParameter("title");
		String bigCategory = request.getParameter("bigCategory");
		String smallCategory = request.getParameter("smallCategory");
		String content = request.getParameter("content");
		Inquiry insert = new Inquiry(writer, title, bigCategory, smallCategory, content);
		int result = new InquiryService().insertInquiry(insert);
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "1:1문의 등록 성공!!");
			response.sendRedirect(request.getContextPath() + "/inquiryForm.service?currentPage=1&un="+writer);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
