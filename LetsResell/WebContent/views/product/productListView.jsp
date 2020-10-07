<%@page import="com.LetsResell.common.member.vo.Filter"%>
<%@page import="com.LetsResell.common.member.vo.PageInfo"%>
<%@page import="com.LetsResell.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String search = (String)request.getAttribute("search");
	String url = "";
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	Filter filter = (Filter)request.getAttribute("filter");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
	if(search == null) {
		url = "&category=" + filter.getCategory() + "&brand=" + filter.getBrand() + "&color=" + filter.getColor() +
				 "&price=" + filter.getPrice() + "&order=" + filter.getOrder();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/LetsResell/resources/css/product/productListView.css">
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
    	
			<% if(search != null) { %>
			
	        <h1>
	        	<b><%= search %></b>
	        </h1>
	        
	        <% } else { %>
	        
	        <h1><b><%= list.get(0).getPrBrand() %></b></h1>
	        
	        <% } %>
	        
	        <br>
	
			<% for(Product p : list) {%>
	        <div id="product">
	        
				<input type="hidden" value="<%= p.getPrNo() %>">
				
	            <div id="product_img" class="product_img">
	                <img src="<%=contextPath %>/<%= p.getTitleImg() %>" alt="<%= p.getPrModel() %>" width="100%" height="100%">
	            </div>
	
	            <div id="product_detail">
	                <p><%= p.getPrName() %></p>
	                	발매가 <br>
	                <b>￦ </b><b><%= p.getPrReleasePrice() %></b>
	            </div>
	
	        </div>
			<% } %>
	        
			<% if(search != null) {%>	<!-- search -->
			 
	        <div class="pagingArea" align="center">
				<% if(currentPage != 1) { %>
	            <!-- 맨 처음으로 (<<) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=1&search=<%=search%>';">&lt;&lt;</button>
	
	            <!-- 이전 페이지로 (<) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=currentPage-1%>&search=<%=search%>';">&lt;</button>
	            <% } %>
	            
	            <% for(int i=startPage; i<=endPage; i++) { %>
	            	<% if(i != currentPage) { %>
	            	<button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=i%>&search=<%=search%>';"><%= i%></button>
	            	<% } else { %>
	            	<button disabled><%= i %></button>
	            	<% } %>
	            <% } %>
	            
	            <% if(currentPage != maxPage) { %>
	            <!-- 다음 페이지로 (>) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=currentPage+1%>&search=<%=search%>';">&gt;</button>
	
	            <!-- 맨 끝으로 (>>) -->
	            <button onclick="location.href='<%= contextPath%>/searchProduct.do?currentPage=<%=maxPage%>&search=<%=search%>';">&gt;&gt;</button>
				<% } %>
	        </div>
	        
	        <% } else { %>	<!-- filter -->
			
			<div class="pagingArea" align="center">
				<% if(currentPage != 1) { %>
	            <!-- 맨 처음으로 (<<) -->
	            <button onclick="location.href='<%=contextPath%>/filterSearch.do?currentPage=1&<%= url %>';">&lt;&lt;</button>
	
	            <!-- 이전 페이지로 (<) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=currentPage-1%><%= url %>';">&lt;</button>
	            <% } %>
	            
	            <% for(int i=startPage; i<=endPage; i++) { %>
	            	<% if(i != currentPage) { %>
	            	<button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=i%><%= url %>';"><%= i%></button>
	            	<% } else { %>
	            	<button disabled><%= i %></button>
	            	<% } %>
	            <% } %>
	            
	            <% if(currentPage != maxPage) { %>
	            <!-- 다음 페이지로 (>) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=currentPage+1%><%= url %>';">&gt;</button>
	
	            <!-- 맨 끝으로 (>>) -->
	            <button onclick="location.href='<%= contextPath%>/searchProduct.do?currentPage=<%=maxPage%><%= url %>';">&gt;&gt;</button>
				<% } %>
	        </div>
	        
	        <% } %>
		</div>
		<!-- filter area 추가 -->
		<%@ include file="../common/filterArea.jsp" %>
    </div>
</div>
<!-- foot 추가 -->
<%@ include file="../common/footer.jsp" %>
</body>
<script src="/LetsResell/resources/js/product/productListView.js" rel="javascript"></script>
</html>