<%@page import="com.LetsResell.common.member.vo.PageInfo"%>
<%@page import="com.LetsResell.product.model.vo.Sale"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Sale> list = (ArrayList<Sale>)request.getAttribute("list");
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
<title>레츠리셀-상품이름</title>
<link rel="stylesheet" href="/LetsResell/resources/css/product/saleListView.css">
</head>
<body>
<!-- header 추가 -->
<%@ include file="../common/header.jsp" %>
<div class="sale_outer">

    <div id="filter_area">
        <!-- filter 추가 -->
        <%@ include file="../common/filter.jsp" %>
    </div>
    
    <div id="product_area">

        <div class="product_outer">

            <h1><b><%= list.get(0).getSaleName() %></b></h1>
            <br>

            <div id="btn_box">
            	
            	<input type="hidden" value="<%= list.get(0).getPrNo() %>">
            	
                <div id="wish_btn">

                    <div id="wish_btn_img" align="center">
                        <img src="/LetsResell/resources/images/product/heart.png" width="90%" height="90%">
                    </div>

                    <div id="wish_btn_name" align="center">
                       
                    </div>
                </div>

                <div id="sell_btn">

                    <div id="sell_btn_img">
                        <img src="/LetsResell/resources/images/product/pen.png" width="90%" height="90%">
                    </div>

                    <div id="sell_btn_name" align="center">
                        Sell
                    </div>

                </div>

            </div>

			<% for(Sale s : list) { %>
            <div id="product">
				<input type="hidden" value="<%= s.getSaleNo() %>">
                <div id="product_img" class="product_img">
                    <img src="<%= contextPath %>/<%= s.getTitleImg() %>" alt="<%= s.getSaleName() %>" width="100%" height="100%">
                </div>

                <div id="product_detail">
                    <p>size: <%= s.getSaleSize() %></p>
                    <b id="product_condition"><%= s.getSaleCondition() %></b>
                    <b id="product_price">￦ <%= s.getSalePrice() %></b>
                </div>

            </div>
			<% } %>

            <div class="pagingArea" align="center">
				<% if(currentPage != 1) { %>
	            <!-- 맨 처음으로 (<<) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=1&prNo=<%=list.get(0).getPrNo()%>';">&lt;&lt;</button>
	
	            <!-- 이전 페이지로 (<) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=currentPage-1%>&prNo=<%=list.get(0).getPrNo()%>';">&lt;</button>
	            <% } %>
	            
	            <% for(int i=startPage; i<=endPage; i++) { %>
	            	<% if(i != currentPage) { %>
	            	<button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=i%>&prNo=<%=list.get(0).getPrNo()%>';"><%= i%></button>
	            	<% } else { %>
	            	<button disabled><%= i %></button>
	            	<% } %>
	            <% } %>
	            
	            <% if(currentPage != maxPage) { %>
	            <!-- 다음 페이지로 (>) -->
	            <button onclick="location.href='<%=contextPath%>/searchProduct.do?currentPage=<%=currentPage+1%>&prNo=<%=list.get(0).getPrNo()%>';">&gt;</button>
	
	            <!-- 맨 끝으로 (>>) -->
	            <button onclick="location.href='<%= contextPath%>/searchProduct.do?currentPage=<%=maxPage%>&prNo=<%=list.get(0).getPrNo()%>';">&gt;&gt;</button>
				<% } %>
	        </div>

        </div>

	    <!-- filter area 추가 -->
	    <%@ include file="../common/filterArea.jsp" %>
    </div>
    
</div>

<!-- footer 추가 -->
<%@ include file="../common/footer.jsp" %>
</body>
<script src="/LetsResell/resources/js/product/saleListView.js" rel="javascript"></script>
</html>