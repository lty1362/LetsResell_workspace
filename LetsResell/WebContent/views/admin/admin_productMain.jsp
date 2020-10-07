<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%	
	ArrayList<Admin_Product> list = (ArrayList<Admin_Product>)request.getAttribute("list");
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
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_productMain.css">
</head>
<body>
	<div id="wrap" style="height:1600px">
        <%@ include file= "../common/header.jsp"%>

        <div id="body">
			<div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	        </div>
            <div id="body_right">
                <div id="category">
                    <input type="button" value="전체" onclick="location.href='<%=contextPath%>/productMain.admin?currentPage=1#body_right';">
                    <input type="button" value="상의" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=Tops#body_right';">
                    <input type="button" value="하의" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=Bottoms#body_right';">
                    <input type="button" value="아우터" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=Outers#body_right';">
                    <input type="button" value="신발" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=Footwear#body_right';">
                    <input type="button" value="악세사리" onclick="location.href='<%=contextPath%>/productCategory.admin?currentPage=1&category=Accessories#body_right';">
                </div>
                <div id="productList">
                	<table>
	                    <% if(list.isEmpty()){ %>
			            	<tr>
			            		<td colspan="6">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
		                    <tr class="ut">
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
		                            <td class="ut"><input type="checkbox"></td>
		                        </tr>
			                <% } %>
	            		<% } %>
            		</table>
                </div>
                
                <div id="productUpdate">
                    <input type="button" value="삭제" data-toggle="modal" data-target="#deleteForm">
                    <input type="button" value="등록" onclick="location.href='<%=contextPath%>/productEnrollForm.admin';">
                </div>
                
                <form action="productSearch.admin" method="post">
                	<input type="hidden" name="currentPage" value="1">
	                <div id="search"  align="center">
	                    <select name="filter" id="filter">
	                        <option value="code" selected>제품코드</option>
	                        <option value="name">제품명</option>
	                        <option value="brand">브랜드</option>
	                        <option value="color">컬러</option>
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
		           		<button onclick="location.href='<%=contextPath%>/productMain.admin?currentPage=<%=currentPage-1%>#body_right';">&lt;</button>
		            <% } %>
		            
			            <% for(int p = startPage; p <= endPage ; p++){ %>
			            	<% if(p != currentPage){ %>
			            	<button onclick="location.href='<%=contextPath%>/productMain.admin?currentPage=<%=p%>#body_right';"><%=p%></button>
			            	<% } else { %>
			            	<button disabled><%= p %></button>
			            	<% } %>
			            <% } %>
	            
		            <%if(currentPage == maxPage){ %>
		            	<button>&gt;</button>
		            <% } else {%>
		            	<button onclick="location.href='<%=contextPath%>/productMain.admin?currentPage=<%=currentPage+1%>#body_right';">&gt;</button>
		            <% } %>
		        </div>
		    </div>
            </div>
        </div>
        
        
        <!-- 삭제 버튼 클릭 시 보여질 Modal -->
        <div class="modal" id="deleteForm">
            <div class="modal-dialog">
                <div class="modal-content">
                
                    <div class="modal-header" style="padding-left:100px;">
                    	<div class="modal-title">Are you sure to delete?</div>
                    </div>
                    
                    <div class="modal-body" align="center">
                        <form action="" method="POST">
                            <br>
                            <button type="submit" class="btn btn-secondary" onclick="check();">Yes</button>
                            <button type="submit" class="btn btn-danger">No</button>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
        <%@ include file= "../common/footer.jsp"%>
    </div>
    <script>
    	$("#footer").css("margin-top","50px");
    	// modify
    	$(function(){
   			$("#productList>table tr td").not($(".ut")).hover().css("cursor","pointer");
     		$("#productList>table tr td").not($(".ut")).click(function(){
     			var code = $(this).siblings().eq(0).html();
	   			location.href = "<%=contextPath%>/productDetail.admin?productCode="+code;
    		});
    	});
    	
    	// delete
	    var arr = [];
    	check = function(){
	    	$('#productList input').each(function(index){
	    	    if($(this).is(":checked")==true){
	    	    	arr.push($(this).closest("td").siblings().eq(0).html());
	    	    }
	    	});
	    	var checked = arr.join();
	    	location.href="<%=contextPath%>/productMainDelete.admin?checked="+checked;
    	}
    </script>
</body>
</html>