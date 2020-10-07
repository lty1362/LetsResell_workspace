<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.LetsResell.member.model.vo.Member" %>
<%@ page import="com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Wishlist> wishlist = (ArrayList<Wishlist>)request.getAttribute("wishlist");
	WishlistPageInfo wishlistPage = (WishlistPageInfo)request.getAttribute("wishlistPage");
	String order = (String)request.getAttribute("order");
	
	int wishlistCount = wishlistPage.getWishlistCount();
	int currentPage = wishlistPage.getCurrentPage();
	int startPage = wishlistPage.getStartPage();
	int endPage = wishlistPage.getEndPage();
	int maxPage = wishlistPage.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<!-- CSS -->
    <%@ include file="../../resources/css/myPage/myPage_wishListView.css"%>
    <!-- js -->
    <script type="text/javascript" src="resources/js/myPage/myPage_wishlist.js" ></script> 
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div class="outer">
        <div class="mypage">
            <%@ include file="../myPage/sideMenubar.jsp" %>
            <div class="mypage_body">
                <p id="wish_title">관심상품</p>
                  <div class="btnList">
                    <button type="button" id="btn_deleteWish" class="btn btn-dark btn btn-primary btn-sm" name="<%=loginUser.getUserNo()%>">선택상품 삭제</button>
                    <select id="order" name="<%=loginUser.getUserNo()%>" class="custom-select custom-select-sm mb-3" style="width: 150px;">
                      <option id="newOrder" value="new">최신등록순</option>
                      <option id="oldOrder" value="old">과거등록순</option>
                    </select>
                  </div>
                <div class="container">       
                    <table class="table">
                      <thead>
                        <tr>
                          <th width="20px"><input type="checkbox" id="checkbox_checkAll"></th>
                          <th width="500px">상품명</th>
                          <th width="50px">즉시구매가</th>
                          <th width="50px">즉시판매가</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<%if(wishlist.isEmpty()) { %>
							<tr><td colspan="3" align="center">추가하신 관심 상품이 없습니다.</td></tr>
						<% }else {%>
							<% for(Wishlist wish : wishlist) { %>
							<tr>
	                          <td><input type="checkbox" class="checkbox_checkDetail" name="<%=wish.getPrName()%>" style="margin-top:40px;"></td>
	                          <td>
	                          	<img src="https://outofstock.co.kr/upload/item/346/15424648774201211.jpg" width="100px" height="100px">
	                          	<a href="" style="color:black; margin-left:10px;"><%= wish.getPrName() %></a>
	                          </td>
	                          <td><p style="margin-top:40px;">1,300,000</p></td>
	                          <td><p style="margin-top:40px;">1,200,000</p></td>
	                        </tr>
			            	<% } %>
						<% } %>
                      </tbody>
                      <tfoot>
                        <tr>
                          <th colspan="4">총 : <%=wishlistCount%>개</th>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <%if(!wishlist.isEmpty()) { %>
	                  <div class="page">
	                    <div class="pageNumberBar">
		                    <% if(currentPage != 1){ %>
					            <!-- 맨 처음으로 (<<) -->
					            <a href="<%=contextPath%>/myPage.wishlist?userNo=<%=login.getUserNo()%>&currentPage=1">&laquo;</a>
							<% } %>
		                    <% for(int pageNum=startPage; pageNum<=endPage; pageNum++){ %>
								<% if(pageNum != currentPage){ %>
				            	<a href="<%=contextPath%>/myPage.wishlist?userNo=<%=login.getUserNo()%>&currentPage=<%=pageNum%>"><%=pageNum%></a>
				            	<% }else{ %>
				            	<a class="active" style="pointer-events: none; cursor: default;"><%=pageNum%></a>
				            	<% } %>
				            <% } %>
		 					<% if(currentPage != maxPage){ %>
					            <!-- 맨 끝으로 (>>) -->
					            <a href="<%=contextPath%>/myPage.wishlist?userNo=<%=login.getUserNo()%>&currentPage=<%=maxPage%>">&raquo;</a>
							<% } %>
	                    </div>
	                  </div>
                  <% } %>
            </div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
                        <script>
				    	<% if(order.equals("old")){%>
				    		$("#oldOrder").attr("selected",true);
				    		$("#newOrder").attr("selected",false);
				    	<% }else{ %>
				    		$("#newOrder").attr("selected",true);
				    		$("#newOrder").attr("selected",false);
				    	<% } %>
				    </script>
</body>
</html>