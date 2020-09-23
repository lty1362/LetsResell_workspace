<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%
	ArrayList<Admin_Member> list = (ArrayList<Admin_Member>)request.getAttribute("list");
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
		#menu1>*:nth-child(3){
        	font-size:20px;
        	text-decoration:underline;
        	font-weight:bold;
        	padding-left:40px;
        }
		#menu4>*:nth-child(2), #menu4>*:nth-child(3){
	    	display:none;
	    }
	    #menu3>*:nth-child(2), #menu3>*:nth-child(3){
        	display:none;
        }
	    #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
		#userList>div{
            margin-bottom: 20px;
        }
        #userList{
        	height:100%;
        }
        #users>table{
            border-collapse: collapse;
            width: 100%;
            text-align:center;
        }
        #users>table th{
            background: lightgray;
            height: 15px;
            font-size:20px;
            padding:5px;
        }
        #users>table td{
            border: 1px solid lightgray;
        }
        #users>table tr>th:nth-child(1){
            border-right: 1px solid white;
        }
        #users>table tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #users>table tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #users>table tr>th:nth-child(4){
            border-right: 1px solid white;
        }
        #users>table tr td:nth-child(1){
            border-left: 0px;
            font-size:18px;
            width:7%;
        }
        #users>table tr td:nth-child(2){
            font-size:18px;
            width:10%;
        }
        #users>table tr td:nth-child(3){
            font-size:18px;
            width: 35%;
        }
        #users>table tr td:nth-child(4){
            font-size:18px;
            width: 20%;
        }
        #users>table tr td:nth-child(5){
        	border-right:0px;
            font-size:18px;
        }
        #userTitle{
            background: lightgray;
            font-weight: bold;
            text-align: center;
            font-size: 33px;
            padding: 5px;
        }
        #search{
        	margin-top: 50px;
        	margin-bottom:10px;
        }
        #search>select{
            height:40px;
            width:100px;
            border: 1px solid lightgray;
            text-align-last: center;
            font-size: 20px;
        }
        #search_in{
            display:inline-block;
            height: 40px;
            width: 400px;
            border: 1px solid lightgray;
        }
        #search_in>[type="search"]{
            border:0px;
            height: 95%;
            width: 85%;
           	padding-top:4px;

        }
        #search_in>[type="submit"]{
            background: lightgray;
            border: 0px;
            height: 100%;
            width: 15%;
            font-weight: bold;
            font-size:20px;
        }
        .pagingArea{
        	margin-top:5px;
        	padding-left:300px;
        }
        .pagingArea *{
        	float:left;
        }
        .pagingArea button{
            background: rgb(236, 236, 236);
            width: 30px;
            height: 30px;
            margin-left: 5px;
            margin-right: 5px;
            font-size:20px;
            font-weight: 400;
            margin-top:30px;
            text-align:center;
            border:0px;
            display:block;
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
                <div id="userList">
                    <div id="userTitle">회원 조회</div>
                    <div id="users">
                        <table id="memberList">
			                <% if(list.isEmpty()){ %>
			            	<tr>
			            		<td colspan="5">조회된 리스트가 없습니다.</td>
			            	</tr>
		            		<% } else {%>
			                    <tr>
	                                <th>코드</th>
	                                <th>이름</th>
	                                <th>주소</th>
	                                <th>전화번호</th>
	                                <th style="border-right: 1px solid lightgray;">이메일</th>
	                            </tr>
			            		<% for(int i = 0 ; i < list.size() ; i++){ %>
					                <tr>
					                    <td><%=list.get(i).getUserNo()%></td>
		                                <td><%=list.get(i).getUserName() %></td>
		                                <td>-</td> <!-- 나중에 address table join -->
		                                <td><%=list.get(i).getPhone() %></td>
		                                <td><%=list.get(i).getUserId() %>@naver.com</td>
					                </tr>
				                <% } %>
		            		<% } %>
		                </table>
                    </div>
                    <form action="memberSearch.admin#userTitle" method="get">
                    	<input type="hidden" name="currentPage" value="1">
		                <div id="search"  align="center">
		                    <select name="filter" id="filter">
	                            <option value="userCode" selected>회원코드</option>
	                            <option value="userName">이름</option>
	                            <option value="address">주소</option>
	                            <option value="phone">전화번호</option>
	                            <option value="email">이메일</option>
	                        </select>
	 	                    <div id="search_in">
		                        <input type="search" name=search><input type="submit" value="검색">
		                    </div>
		                </div>
                    </form>
                    <div class="pagingArea" align="center">
			            <%if(currentPage == 1){ %>
			            	<button>&lt;</button>
			            <% } else { %>
			            	<form action="memberSearch.admin#userTitle" method="get">
			            		<input type="hidden" name="filter" value="<%=filter%>">
			            		<input type="hidden" name="search" value="<%=search%>">
			            		<input type="hidden" name="currentPage" value="<%=currentPage-1%>">
			           			<button type="submit">&lt;</button>
			           		</form>
			            <% } %>
			            
				            <% for(int p = startPage; p <= endPage ; p++){ %>
				            	<% if(p != currentPage){ %>
				            	<form action="memberSearch.admin#userTitle" method="get">
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
			            	<form action="memberSearch.admin#userTitle" method="get">
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
    <script>
    	$(function(){
    		$("#users>table tr").hover().css("cursor","pointer")
    		$("#users>table tr").not($("#users>table tr:first")).click(function(){
    			var mno = $(this).children().eq(0).text();
    			location.href = "<%=contextPath%>/memberDetail.admin?mno"+mno;
    		});
    	});
    </script>
</body>
</html>