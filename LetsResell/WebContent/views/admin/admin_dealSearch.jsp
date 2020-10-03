<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%
	ArrayList<Admin_Sale> list = (ArrayList<Admin_Sale>)request.getAttribute("list");
	Admin_PageInfo pi = (Admin_PageInfo)request.getAttribute("pi");
	String filter = (String)request.getAttribute("filter");
	String search = (String)request.getAttribute("search");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int pageLimit = pi.getPageLimit();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int boardLimit = pi.getBoardLimit();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
		#menu3>*:nth-child(2), #menu3>*:nth-child(3){
        	display:none;
        }
        #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
	    }
        #menu4>*:nth-child(3){
        	font-size:20px;
        	text-decoration:underline;
        	font-weight:bold;
        	padding-left:5px;
        }
        #title{
            background: lightgray;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #deal{
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }
        #deal th{
            background: lightgray;
            height: 25px;
            padding-top: 3px;
        }
        #deal td{
            border: 1px solid lightgray;
            padding-top: 5px;
            padding-bottom: 5px;
            
        }
        #deal tr>th:nth-child(1){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(4){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(5){
            border-right: 1px solid white;
        }
        #deal tr td:nth-child(1){
            border-left: 0px;
            width: 10%;
        }
        #deal tr td:nth-child(2){
            width: 10%;
        }
        #deal tr td:nth-child(3){
            border-right: 0px;
            width: 27%;
        }
        #deal tr td:nth-child(4){
            width: 27%;
        }
        #deal tr td:nth-child(5){
            width: 13%;
        }
        #deal tr td:nth-child(6){
            width: 13%;
            border-right: 0px;
        }
</style>
</head>
<body>
	<div id="wrap">
       <%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
	        	<%@ include file="admin_sideMenu.jsp" %>
		    </div>
            <div id="body_right">
                <div id="title">
                    거래 내역 조회
                </div>
                <table id="deal">
                    <% if(list.isEmpty()){ %>
			            	<tr>
			            		<td colspan="6">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
	                           <tr>
			                        <th>상품코드</th>
			                        <th>제품코드</th>
			                        <th>판매자</th>
			                        <th>상품명</th>
			                        <th>판매 등록가</th>
			                        <th>상품 등록일</th>
			                    </tr>
		            		<% for(int i = 0 ; i < list.size() ; i++){ %>
				                <tr>
		                            <td><%= list.get(i).getSaleNum()%></td>
		                            <td><%= list.get(i).getPrNum()%></td>
		                            <td><%= list.get(i).getUserId()%></td>
		                            <td><%= list.get(i).getSaleName()%></td>
		                            <td>￦ <%= list.get(i).getSalePrice()%></td>
		                            <td><%= list.get(i).getSaleDate()%></td>
		                        </tr>
			                <% } %>
	            		<% } %>
                </table>
                
                 <form action="saleSearch.admin" method="post">
                	<input type="hidden" name="currentPage" value="1">
	                <div id="search"  align="center">
	                    <select name="filter" id="filter">
	                        <option value="saleCode" selected>상품코드</option>
	                        <option value="productCode" >제품코드</option>
	                        <option value="user">판매자</option>
	                        <option value="name">상품명</option>
	                    </select>
	                    <div id="search_in">
	                        <input name="search" type="search"><input type="submit" value="검색">
	                    </div>
	                </div>
                </form>
                
                <div id="bigPageArea">
                <div class="pagingArea" align="center">
			            <%if(currentPage == 1){ %>
			            	<button>&lt;</button>
			            <% } else { %>
			            	<form action="saleSearch.admin#body_right" method="post">
			            		<input type="hidden" name="filter" value="<%=filter%>">
			            		<input type="hidden" name="search" value="<%=search%>">
			            		<input type="hidden" name="currentPage" value="<%=currentPage-1%>">
			           			<button type="submit">&lt;</button>
			           		</form>
			            <% } %>
			            
				            <% for(int p = startPage; p <= endPage ; p++){ %>
				            	<% if(p != currentPage){ %>
				            	<form action="saleSearch.admin#body_right" method="post">
				            		<input type="hidden" name="filter" value="<%=filter%>">
				            		<input type="hidden" name="search" value="<%=search%>">
				            		<input type="hidden" name="currentPage" value="<%=p%>">
				           			<button type="submit"><%= p %></button>
			           			</form>
				            	<% } else { %>
				            	<button disabled><%= p %></button>
				            	<% } %>
				            <% } %>
		            
			            <%if(currentPage == maxPage){ %>
			            	<button>&gt;</button>
			            <% } else {%>
			            	<form action="saleSearch.admin#body_right" method="post">
			            		<input type="hidden" name="filter" value="<%=filter%>">
			            		<input type="hidden" name="search" value="<%=search%>">
			            		<input type="hidden" name="currentPage" value="<%=currentPage+1%>">
			           			<button type="submit">&gt;</button>
			           		</form>
			            <% } %>
			        </div>
			    </div>
            </div>
        </div>
       <%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>