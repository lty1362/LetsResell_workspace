<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.service.model.vo.*" %>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
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
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_noticeSearch.css">
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
	                    공지사항
	                </div>
	                <table id="notice">
	                	<% if(list.isEmpty()){ %>
			            	<tr>
			            		<td colspan="3">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
		                    <tr>
		                    	<th></th>
		                        <th>No</th>
		                        <th>제목</th>
		                        <th>등록일</th>
		                    </tr>
		            		<% for(int i = 0 ; i < list.size() ; i++){ %>
				                <tr>
				                	<td style="display:none;"><%=list.get(i).getNoticeNo() %></td>
				                	<td><input type="checkbox"></td>
				                    <% int count = listCount-(currentPage*10-10); %>
				                    <td><%= count-i %></td>
				                    <td><%= list.get(i).getNoticeTitle() %></td>
				                    <td><%= list.get(i).getEnrollDate() %></td>
				                </tr>
			                <% } %>
	            		<% } %>
                	</table>
                	
                	<div id="noticeUpdate">
	                    <input type="button" value="삭제" data-toggle="modal" data-target="#deleteForm">
                		<input type="button" value="작성" onclick="enroll();">
	                </div>
	                
	                <form action="noticeSearch.admin#title" method="post">
                    	<input type="hidden" name="currentPage" value="1">
		                <div id="search"  align="center">
		                    <select name="filter" id="filter">
		                        <option value="title" selected>제목</option>
		                        <option value="content">내용</option>
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
			            	<form action="noticeSearch.admin#body_right" method="post">
			            		<input type="hidden" name="filter" value="<%=filter%>">
			            		<input type="hidden" name="search" value="<%=search%>">
			            		<input type="hidden" name="currentPage" value="<%=currentPage-1%>">
			           			<button type="submit">&lt;</button>
			           		</form>
			            <% } %>
			            
				            <% for(int p = startPage; p <= endPage ; p++){ %>
				            	<% if(p != currentPage){ %>
				            	<form action="noticeSearch.admin#body_right" method="post">
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
			            	<form action="noticeSearch.admin#body_right" method="post">
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
	        <!-- 삭제 버튼 클릭 시 보여질 Modal -->
	        <div class="modal" id="deleteForm">
	            <div class="modal-dialog">
	                <div class="modal-content">
	                
	                    <div class="modal-header" style="padding-left:100px;">
	                    	<div class="modal-title">Are you sure to delete?</div>
	                    </div>
	                    
	                    <div class="modal-body" align="center">
	                        <form action="noticeSearchDelete.admin" method="POST">
	                        	<input type="hidden" name="filter" value="<%=filter%>">
	                        	<input type="hidden" name="search" value="<%=search%>">
	                        	<input type="hidden" name="checked" id="checked">
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
	   
			// modify
		    $(function(){
		       $("#notice tr td:nth-child(4)").click(function(){
		         var nno = $(this).closest("td").siblings().eq(0).html();
		         console.log(nno);
		         location.href = "<%=contextPath%>/noticeDetail.admin?nno="+nno; // 쿼리스트링;
		       });
		    });
		     
		  	// delete
		    var arr = [];
	    	check = function(){
		    	$('#notice input').each(function(index){
		    	    if($(this).is(":checked")==true){
		    	    	arr.push($(this).closest("td").siblings().eq(0).html());
		    	    }
		    	});
		    	var checked = arr.join();
		    	$("#checked").val(checked);
	    	}
	    	
	    	// enroll
	    	enroll = function(){
	    		var nno = $(this).closest("td").siblings().eq(0).html();
	    		location.href = "<%=contextPath%>/noticeEnrollForm.admin?nno="+nno;
	    	}
	   </script>
</body>
</html>