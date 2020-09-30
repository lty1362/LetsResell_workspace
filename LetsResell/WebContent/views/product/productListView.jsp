<%@page import="com.LetsResell.common.member.vo.PageInfo"%>
<%@page import="com.LetsResell.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String search = (String)request.getAttribute("search");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/LetsResell/resources/css/product/productListView.css">
<script scr="/LetsResell/resources/js/product/productListView.js" rel="javascript"></script>
<title>레츠리셀-제품이름</title>
</head>
<body>
<!-- header 추가 -->
<%@ include file="../common/header.jsp" %>

<div class="outer">

    <div id="filter_area">
        <!-- filter 추가 -->
        <%@ include file="../common/filter.jsp" %>
	</div>
	
	<div id="product_area">

    	<div class="product_outer">

	        <h1><b><%= search %></b></h1>
	        <br>
	
			<% for(Product p : list) {%>
	        <div id="product">
				<input type="hidden" value="<%= p.getPrNo() %>">
	            <div id="product_img">
	                <img src="<%= p.getTitleImg() %>" alt="<%= p.getPrModel() %>" width="100%" height="100%">
	            </div>
	
	            <div id="product_detail">
	                <p><%= p.getPrName() %></p>
	                	발매가 <br>
	                <b>￦ </b><b><%= p.getPrReleasePrice() %></b>
	            </div>
	
	        </div>
			<% } %>
	        
	
	         <div class="pagingArea" align="center">
				<% if(currentPage != 1) { %>
	            <!-- 맨 처음으로 (<<) -->
	            <button onclick="location.href='<%=contextPath%>/search.do?currentPage=1';">&lt;&lt;</button>
	
	            <!-- 이전 페이지로 (<) -->
	            <button onclick="location.href='<%=contextPath%>/search.do?currentPage=<%=currentPage-1%>';">&lt;</button>
	            <% } %>
	            
	            <% for(int p=startPage; p<=endPage; p++) { %>
	            	<% if(p != currentPage) { %>
	            	<button onclick="location.href='<%=contextPath%>/search.do?currentPage=<%=p%>';"><%= p %></button>
	            	<% } else { %>
	            	<button disabled><%= p %></button>
	            	<% } %>
	            <% } %>
	            
	            <% if(currentPage != maxPage) { %>
	            <!-- 다음 페이지로 (>) -->
	            <button onclick="location.href='<%=contextPath%>/search.do?currentPage=<%=currentPage+1%>';">&gt;</button>
	
	            <!-- 맨 끝으로 (>>) -->
	            <button onclick="location.href='<%= contextPath%>/search.do?currentPage=<%=maxPage%>';">&gt;&gt;</button>
				<% } %>
	        </div>

		</div>
		<!-- filter area 추가 -->
		<%@ include file="../common/filterArea.jsp" %>
    </div>
</div>
<!-- foot 추가 -->
<%@ include file="../common/footer.jsp" %>
</body>
</html>