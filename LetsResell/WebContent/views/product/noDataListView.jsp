<%@page import="java.util.ArrayList"%>
<%@page import="com.LetsResell.common.member.vo.PageInfo"%>
<%@page import="com.LetsResell.product.model.vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Product p = (Product)request.getAttribute("p");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> imgList = (ArrayList<Product>)request.getAttribute("imgList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레츠리셀-상품이름</title>
<link rel="stylesheet" href="/LetsResell/resources/css/product/noDataListView.css">
</head>
<body>
<!-- header 추가 -->
<%@ include file="../common/header.jsp" %>
<div class="noData_outer">

    <div id="filter_area">
        <!-- filter 추가 -->
        <%@ include file="../common/filter.jsp" %>
    </div>

    <div id="product_area">

        <div class="product_outer">

                <h1><b><%= p.getPrName() %></b></h1>
                <br>

                <div id="btn_box" align="center">

                    <div id="wish_btn">
                    
                    	<input type="hidden" value="<%= p.getPrNo() %>">

                        <div id="wish_btn_img">
                            <img src="/LetsResell/resources/images/product/heart.png" alt="" width="90%" height="90%" class="wishImg">
                        </div>

                        <div id="wish_btn_name">
                            Dibs
                        </div>
                    </div>

                    <div id="sell_btn">

                        <div id="sell_btn_img">
                            <img src="/LetsResell/resources/images/product/pen.png" alt="" width="90%" height="90%">
                        </div>

                        <div id="sell_btn_name">
                            Sell
                        </div>

                    </div>

                </div>

                <br><br>

                <div id="sale_imgList" align="center">

                    <div id="sale_img">
						
						<% for(Product img : imgList) {%>
                        <div id="sale_img1">
                            <img src="<%= contextPath %>/<%= img.getTitleImg() %>" width="100%" height="100%" onclick="imgPop(this.src);">
                        </div>
						<% } %>
                    </div>

                    <div id="sale_btn">
						
					<% for(int i=pi.getStartPage(); i<= pi.getEndPage(); i++) { %>
                        <button onclick="location.href='<%= contextPath %>/saleList.sa?prNo=<%=p.getPrNo()%>&currentPage=<%=i%>';"></button>
                    <% } %>

                    </div>

                </div>

                <div id="sale_youtube">
                    <iframe src="<%= p.getPrReviewYoutube() %>" frameborder="0"></iframe>
                </div>

                <br><br><br>

                <h2>상품정보</h2>

                <table>

                    <tr align="left">
                        <th width="200" height="50">제품 번호</th>
                        <td width="150"><%= p.getPrModel() %></td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">발매일</th>
                        <td><%= p.getPrReleaseDate() %></td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">발매가</th>
                        <td><%= p.getPrReleasePrice() %></td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">색상</th>
                        <td><%= p.getPrColor() %></td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">치수</th>
                        <td><%= p.getPrSize() %></td>
                    </tr>

                </table>

                <div id="sale_detail">
                    <p>
						<%= p.getPrReviewDetail() %>
                    </p>
                </div>
        </div>
		<!-- filterArea 추가 -->
		<%@ include file="../common/filterArea.jsp" %>
	</div>
</div>

<!-- footer 추가 -->
<%@ include file="../common/footer.jsp" %>
</body>
<script src="/LetsResell/resources/js/product/noDataListView.js" rel="javascript"></script>
</html>