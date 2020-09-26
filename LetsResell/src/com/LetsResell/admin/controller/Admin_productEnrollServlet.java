package com.LetsResell.admin.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.LetsResell.admin.model.service.ProductService;
import com.LetsResell.admin.model.vo.Admin_Product;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/productEnroll.admin")
public class Admin_productEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_productEnrollServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		if(ServletFileUpload.isMultipartContent(request)) {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/images/admin/");
			int maxSize = 100 * 1024 * 1024;
			MultipartRequest mr = new MultipartRequest(request, savePath, maxSize, new Admin_RenamePolicy());
			
			String image="";
			if(mr.getOriginalFileName("image") != null) {
				image = mr.getFilesystemName("image");
			}
			System.out.println(image);
			String productCode = mr.getParameter("productCode");
			String productName = mr.getParameter("productName");
			String category = mr.getParameter("category");
			String brand = mr.getParameter("brand");
			String size1 = mr.getParameter("size1");
			String size2 = mr.getParameter("size2");
			String size = size1 + "~" + size2;
			String[] colorArr = mr.getParameterValues("color");
			String color = "";
			for(int i = 0 ; i < colorArr.length ; i++) {
				color += colorArr[i];
				if(i != colorArr.length-1) {
					color += ",";
				}
			}
			String reviewYoutube = mr.getParameter("reviewYoutube");
			String reviewDetail = mr.getParameter("reviewDetail");
			String releaseDate = mr.getParameter("releaseDate");
			Date d = Date.valueOf(releaseDate);
			int releasePrice = Integer.parseInt(mr.getParameter("releasePrice"));
			
			Admin_Product p = new Admin_Product();
			p.setPRimage(image);
			p.setPRmodel(productCode);
			p.setPRname(productName);
			p.setPRcategory(category);
			p.setPRbrand(brand);
			p.setPRsize(size);
			p.setPRcolor(color);
			p.setPRreviewYoutube(reviewYoutube);
			p.setPRreviewDetail(reviewDetail);
			p.setPRreleaseDate(d);
			p.setPRreleasePrice(releasePrice);
			
			int result = new ProductService().insertProduct(p);
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "제품 등록 성공!!");
				response.sendRedirect(request.getContextPath()+"/productMain.admin?currentPage=1");
			}else {
				request.getSession().setAttribute("alertMsg", "제품 등록 실패..");
				response.sendRedirect(request.getContextPath()+"/productMain.admin?currentPage=1");
			}
		}
		
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
