<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%
	ArrayList<Admin_Member> list = (ArrayList<Admin_Member>)request.getAttribute("list");
	Admin_PageInfo pi = (Admin_PageInfo)request.getAttribute("pi");
	
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
            font-size:18px;
            width:7%;
        }
        #users>table tr td:nth-child(2){
            font-size:18px;
            width:10%;
        }
        #users>table tr td:nth-child(3){
            font-size:18px;
            width: 40%;
        }
        #users>table tr td:nth-child(4){
            font-size:18px;
            width: 25%;
        }
        #users>table tr td:nth-child(5){
            font-size:18px;
        }
        #userTitle{
            background: lightgray;
            font-weight: bold;
            text-align: center;
            font-size: 33px;
            padding: 5px;
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
	                                <th>이메일</th>
	                                <th>전화번호</th>
	                                <th style="border-right: 1px solid lightgray;">가입일</th>
	                            </tr>
			            		<% for(int i = 0 ; i < list.size() ; i++){ %>
					                <tr>
					                    <td><%=list.get(i).getUserNo()%></td>
		                                <td><%=list.get(i).getUserName() %></td>
		                                <td><%=list.get(i).getUserId() %></td>
		                                <td><%=list.get(i).getPhone() %></td>
		                                <td><%=list.get(i).getEnrollDate() %></td>
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
	                            <option value="email">이메일</option>
	                            <option value="phone">전화번호</option>
	                        </select>
	 	                    <div id="search_in">
		                        <input type="search" name=search><input type="submit" value="검색">
		                    </div>
		                </div>
                    </form>
                <div id="bigPageArea">
                    <div class="pagingArea" align="center">
			            <%if(currentPage == 1){ %>
			            	<button>&lt;</button>
			            <% } else { %>
			           		<button onclick="location.href='<%=contextPath%>/memberMain.admin?currentPage=<%=currentPage-1%>#userTitle';">&lt;</button>
			            <% } %>
			            
				            <% for(int p = startPage; p <= endPage ; p++){ %>
				            	<% if(p != currentPage){ %>
				            	<button onclick="location.href='<%=contextPath%>/memberMain.admin?currentPage=<%=p%>#userTitle';"><%= p %></button>
				            	<% } else { %>
				            	<button disabled><%= p %></button>
				            	<% } %>
				            <% } %>
		            
			            <%if(currentPage == maxPage){ %>
			            	<button>&gt;</button>
			            <% } else {%>
			            	<button onclick="location.href='<%=contextPath%>/memberMain.admin?currentPage=<%=currentPage+1%>#userTitle';">&gt;</button>
			            <% } %>
			        </div>
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
    			location.href = "<%=contextPath%>/memberDetail.admin?mno="+mno;
    		});
    	});
    </script>
</body>
</html>