package com.LetsResell.admin.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.LetsResell.admin.model.service.ProductService;
import com.LetsResell.admin.model.vo.Admin_Image;
import com.LetsResell.admin.model.vo.Admin_Product;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/productUpdate.admin")
public class Admin_productUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admin_productUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		if(ServletFileUpload.isMultipartContent(request)) {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/images/product/");
			int maxSize = 100 * 1024 * 1024;
			MultipartRequest mr = new MultipartRequest(request, savePath, maxSize, new DefaultFileRenamePolicy());
			
			ArrayList<Admin_Image> list1 = new ArrayList<>();
			for(int i = 1 ; i <= 1 ; i++) {
				String key = "image" + i;
				if(mr.getOriginalFileName(key) != null) {
					Admin_Image img = new Admin_Image();
					String ofn = new String(mr.getOriginalFileName(key).getBytes("8859_1"),"utf-8");
					String cfn = new String(mr.getFilesystemName(key).getBytes("8859_1"),"utf-8");
					img.setProductImageOriginName(ofn);
					img.setProductImageChangeName(cfn);
					img.setProductImgUrl("resources/images/product/");
					img.setFileLevel(1);
					list1.add(img);
				}
			}
			
			Admin_Image file2 = null;
			Admin_Image file3 = null;
			Admin_Image file4 = null;
			Admin_Image file5 = null;
			
			String key = "image" + 2;
			if(mr.getOriginalFileName(key) != null) {
				file2 = new Admin_Image();
				String ofn = new String(mr.getOriginalFileName(key).getBytes("8859_1"),"utf-8");
				String cfn = new String(mr.getFilesystemName(key).getBytes("8859_1"),"utf-8");
				file2.setProductImgUrl("resources/images/product/");
				file2.setProductImageOriginName(ofn);
				file2.setProductImageChangeName(cfn);
				file2.setProductDetailNo("file2");
			}
			key = "image" + 3;
			if(mr.getOriginalFileName(key) != null) {
				file3 = new Admin_Image();
				String ofn = new String(mr.getOriginalFileName(key).getBytes("8859_1"),"utf-8");
				String cfn = new String(mr.getFilesystemName(key).getBytes("8859_1"),"utf-8");
				file3.setProductImgUrl("resources/images/product/");
				file3.setProductImageOriginName(ofn);
				file3.setProductImageChangeName(cfn);
				file3.setProductDetailNo("file3");
			}
			key = "image" + 4;
			if(mr.getOriginalFileName(key) != null) {
				file4 = new Admin_Image();
				String ofn = new String(mr.getOriginalFileName(key).getBytes("8859_1"),"utf-8");
				String cfn = new String(mr.getFilesystemName(key).getBytes("8859_1"),"utf-8");
				file4.setProductImgUrl("resources/images/product/");
				file4.setProductImageOriginName(ofn);
				file4.setProductImageChangeName(cfn);
				file4.setProductDetailNo("file4");
			}
			key = "image" + 5;
			if(mr.getOriginalFileName(key) != null) {
				file5 = new Admin_Image();
				String ofn = new String(mr.getOriginalFileName(key).getBytes("8859_1"),"utf-8");
				String cfn = new String(mr.getFilesystemName(key).getBytes("8859_1"),"utf-8");
				file5.setProductImgUrl("resources/images/product/");
				file5.setProductImageOriginName(ofn);
				file5.setProductImageChangeName(cfn);
				file5.setProductDetailNo("file5");
			}
			
			String productCode = mr.getParameter("productCode");
			productCode = new String(productCode.getBytes("8859_1"),"utf-8");
			String productName = mr.getParameter("productName");
			productName = new String(productName.getBytes("8859_1"),"utf-8");
			String category = mr.getParameter("category");
			String brand = mr.getParameter("brand");
			String size1 = mr.getParameter("size1");
			String size2 = mr.getParameter("size2");
			String size = "";
			if(size1.equals("") && size2.equals("")) {
				size = "-";
			}else {
				size = size1 + "~" + size2;
			}
			String[] colorArr = mr.getParameterValues("color");
			String color = "";
			for(int i = 0 ; i < colorArr.length ; i++) {
				color += colorArr[i];
				if(i != colorArr.length-1) {
					color += ",";
				}
			}
			String reviewYoutube = mr.getParameter("reviewYoutube");
			reviewYoutube = new String(reviewYoutube.getBytes("8859_1"),"utf-8");
			String reviewDetail = mr.getParameter("reviewDetail");
			reviewDetail = new String(reviewDetail.getBytes("8859_1"),"utf-8");
			String releaseDate = mr.getParameter("releaseDate");
			Date d = Date.valueOf(releaseDate);
			int releasePrice = Integer.parseInt(mr.getParameter("releasePrice"));
			int pno = Integer.parseInt(mr.getParameter("pno"));
			
			Admin_Product p = new Admin_Product();
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
			p.setPRno(pno);
			
			int result = new ProductService().updateProduct(p, list1, file2, file3, file4, file5);
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "제품 수정 성공!!");
				response.sendRedirect(request.getContextPath() + "/productMain.admin?currentPage=1");
			}else {
				request.getSession().setAttribute("alertMsg", "제품 수정 실패..");
				response.sendRedirect(request.getContextPath()+"/productMain.admin?currentPage=1");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
