<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Wishlist> wishlist = (ArrayList<Wishlist>)request.getAttribute("wishlist");
	WishlistPageInfo wishlistPage = (WishlistPageInfo)request.getAttribute("wishlistPage");
	
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
    <style>
        div{
            box-sizing: border-box;
        }
        .outer{
            width: 1200px;
            height: 1000px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 80px;
        }
        .mypage_body{
            width: 920px;
            margin-left: 280px;
            box-sizing: border-box;
        }
        .wish_title{
            font-size: 20px;
            font-weight: 600;
            color: #333333;
            margin-top: 0px;
            margin-bottom: 30px;
        }
        /* 테이블 css */
        .container{
          margin-top: 10px;
          font-size: 12px;
        }
        /* 버튼 css */
        .btn{
          margin-left: 10px;
          font-size: 12px;
        }
        .btnList{
          box-sizing: border-box;
        }
        .custom-select{
          float: right;
          margin-right: 15px;
        }
        /* 페이지바 css */
        .page{
          text-align: center;
        }
        .pageNumberBar{
          display: inline-block;
        }
        .pageNumberBar a{
          color: black;
          float: left;
          padding: 5px 13px;
          text-decoration: none;
          transition: background-color .3s;
          border: 1px solid #ddd;
          margin: 0 4px;
          border-radius: 3px;
        }
        .pageNumberBar a.active{
          background-color: black;
          color: white;
          border: 1px solid #4CAF50;
        }
        .pageNumberBar a:hover:not(.active){
          background-color: #ddd;
        }

    </style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div class="outer">
        <div class="mypage">
            <%@ include file="../myPage/sideMenubar.jsp" %>
            <div class="mypage_body">
                <p class="wish_title">관심상품</p>
                  <div class="btnList">
                    <button type="button" class="btn btn-dark btn btn-primary btn-sm">선택상품 삭제</button>
                    <select class="custom-select custom-select-sm mb-3" style="width: 150px;">
                      <option selected value="new">최신등록순</option>
                      <option value="old">과거등록순</option>
                    </select>
                  </div>
                <div class="container">       
                    <table class="table">
                      <thead>
                        <tr>
                          <th width="20px"><input type="checkbox"></th>
                          <th width="500px">상품명</th>
                          <th width="50px">즉시구매가</th>
                          <th width="50px">즉시판매가</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<%if(wishlist.isEmpty()) { %>
							<tr><td colspan="3">추가하신 관심 상품이 없습니다.</td></tr>
						<% }else {%>
							<% for(Wishlist wish : wishlist) { %>
							<tr>
	                          <td><input type="checkbox"></td>
	                          <td><%= wish.getPrName() %></td>
	                          <td>1,300,000</td>
	                          <td>1,300,000</td>
	                        </tr>
			            	<% } %>
						<% } %>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td>Doe</td>
                          <td>1,300,000</td>
                          <td>1,300,000</td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <th colspan="4">총 : n개</th>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
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
            </div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>