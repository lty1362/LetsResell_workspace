<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%
	ArrayList<Admin_Product> list = (ArrayList<Admin_Product>)request.getAttribute("list");
	Admin_PageInfo pi = (Admin_PageInfo)request.getAttribute("pi");
	String category = (String)request.getAttribute("category");
	
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
        #menu2>*:nth-child(3){
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
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
	    }
        #filter{
            height:30px;
            width:75px;
            border: 1px solid lightgray;
            text-align-last: center;
            font-size: 13px;
        }
        [type="checkbox"]{
            width: 15px;
            height: 15px;
        }
        #category{
            margin-bottom: 10px;
        }
        #category>input{
            background: rgb(150,150,150);
            color: white;
            font-size: 20px;
            border-radius: 3px;
            margin-right: 1.3%;
            width: 15%;
            border: 0px;
            height: 40px;
        }
        #category input:nth-child(5){
        	width:15.7%;
        }
        #category input:nth-last-child(1){
            margin-right: 0;
        }
        #productList{
            width: 100%;
            height: auto;
            margin-bottom:30px;
        }
        #productList>table{
            width: 100%;
            border-collapse: collapse;
            border: 1px solid lightgray
        }
        #productList>table tr{
        	height:40px;
        }
        #productList th{
            background: lightgray;
            height: 50px;
            font-size: 25px;
            border-right: 1px solid white;
            text-align: center;
        }
        #productList table tr>th:nth-last-child(1){
            border-right: 1px solid lightgray;
        }
        #productList>table td:nth-child(1){
            width: 60px;
        }
        #productList>table td:nth-child(3){
            width: 150px;
        }
        #productList>table td:nth-child(4){
            width: 160px;
        }
        #productList>table td:nth-child(5){
        	width: 120px;
        }
        #productList>table td:nth-child(6){
        	width:60px;
        }
        #productList td{
            border: 1px solid lightgray;
            text-align:center;
            font-size:20px;
        }
        #productUpdate>input{
            border:1px solid rgb(74, 74, 74);
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            margin-left: 10px;
            margin-bottom:10px;
        }
        #productUpdate{
            text-align:right;
        }
        #search{
            margin-top: 20px;
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
            outline-offset:-2px;
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
        .modal-header{
        	margin-top:40px;
        	font-size:50px;
        }
        .modal-body button{
        	width:100px;
        	height:50px;
        	font-size:23px;
        	margin:20px;
        	margin-bottom:40px;
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
                <div id="category">
                    <input type="button" value="전체" onclick="location.href='<%=contextPath%>/productMain.admin?currentPage=1#body_right';">
                    <input type="button" value="상의" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=tops#body_right';">
                    <input type="button" value="하의" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=bottoms#body_right';">
                    <input type="button" value="아우터" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=outers#body_right';">
                    <input type="button" value="악세사리" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=accessories#body_right';">
                    <input type="button" value="신발" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=shoes#body_right';">
                </div>
                <div id="productList">
                    <table>
	                    <% if(list.isEmpty()){ %>
			            	<tr>
			            		<td colspan="6">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
		                    <tr>
	                            <th>코드</th>
	                            <th>제품명</th>
	                            <th>브랜드</th>
	                            <th>컬러</th>
	                            <th>사이즈</th>
	                            <th>비고</th>
	                        </tr>
		            		<% for(int i = 0 ; i < list.size() ; i++){ %>
				                <tr>
		                            <td><%= list.get(i).getPRno()%></td>
		                            <td><%= list.get(i).getPRname()%></td>
		                            <td><%= list.get(i).getPRbrand()%></td>
		                            <td><%= list.get(i).getPRcolor()%></td>
		                            <% if(list.get(i).getPRsize() == null){ %>
		                            	<td>-</td>
		                            <% } else {%>
		                            	<td><%= list.get(i).getPRsize()%></td>
		                            <% } %>
		                            <td><input type="checkbox"></td>
		                        </tr>
			                <% } %>
	            		<% } %>
            		</table>
                </div>
                <div id="productUpdate">
                    <input type="button" value="삭제" data-toggle="modal" data-target="#deleteForm">
                    <input type="button" value="등록" onclick="location.href='<%=contextPath%>/views/admin/admin_productDetail.jsp';">
                </div>
                <div id="search"  align="center">
                    <select name="filter" id="filter">
                        <option value="code" selected>제품코드</option>
                        <option value="name">제품명</option>
                        <option value="brand">브랜드</option>
                        <option value="color">컬러</option>
                    </select>
                    <div id="search_in">
                        <input type="search"><input type="submit" value="검색">
                    </div>
                </div>
                <div class="pagingArea" align="center">
			            <%if(currentPage == 1){ %>
			            	<button>&lt;</button>
			            <% } else { %>
			            	<form action="productCategory.admin#body_right" method="post">
			            		<input type="hidden" name="category" value="<%=category%>">
			            		<input type="hidden" name="currentPage" value="<%=currentPage-1%>">
			           			<button type="submit">&lt;</button>
			           		</form>
			            <% } %>
			            
				            <% for(int p = startPage; p <= endPage ; p++){ %>
				            	<% if(p != currentPage){ %>
				            	<form action="productCategory.admin#body_right" method="post">
				            		<input type="hidden" name="category" value="<%=category%>">
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
			            	<form action="productCategory.admin#body_right" method="post">
			            		<input type="hidden" name="category" value="<%=category%>">
			            		<input type="hidden" name="currentPage" value="<%=currentPage+1%>">
			           			<button type="submit">&gt;</button>
			           		</form>
			            <% } %>
			        </div>
            </div>
        </div>
        <!-- 삭제 버튼 클릭 시 보여질 Modal -->
        <div class="modal" id="deleteForm">
            <div class="modal-dialog">
                <div class="modal-content">
                
                    <!-- Modal Header -->
                    <div class="modal-header">
                    <h4 class="modal-title">정말 삭제하시겠습니까?</h4>
                    <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                    </div>
                    
                    <!-- Modal body -->
                    <div class="modal-body" align="center">

                        <form action="" method="POST">
                            <br>
                            <button type="submit" class="btn btn-secondary">예</button>
                            <button type="submit" class="btn btn-secondary">아니오</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file= "../common/footer.jsp"%>
    </div>
    <script>
    	$(function(){
   			$("#productList>table").not($("tr:[class=untouchable]"),$("td:[class=untouchable]")).hover().css("cursor","pointer");
     		$("#productList>table").not($("tr:[class=untouchable]"),$("td:[class=untouchable]")).click(function(){
     			location.href = "<%=contextPath%>/views/admin/admin_productModify.jsp";
    		});
    	});
    </script>
</body>
</html>