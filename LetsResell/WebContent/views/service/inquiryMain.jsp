<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.service.model.vo.*" %>
<%
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int writer = (int)request.getAttribute("writer");
	
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
<title>고객센터</title>
<link rel="stylesheet" href="/LetsResell/resources/css/service/inquiryMain.css">
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
	            <div id="body_left">
                	<%@ include file="serviceSideMenu.jsp" %>
	            </div>
	
	            <div id="body_right">
	               <div id="title">
                    1:1 문의
                </div>
                <table id="inquiry">
                        <% if(list.isEmpty()){ %>
			            	<tr>
			            		<td colspan="5">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
		                    <tr>
		                        <th>No</th>
		                        <th>분류</th>
		                        <th>제목</th>
		                        <th>작성일</th>
		                        <th>답변 상태</th>
		                    </tr>
		            		<% for(int i = 0 ; i < list.size() ; i++){ %>
			                    <tr>
									<% int count = listCount-(currentPage*10-10); %>
			                        <td style="display:none;"><%= list.get(i).getInquiryNo()%></td>
			                        <td><%=count-i%></td>
			                        <td><%= list.get(i).getInquiryCategoryBig() %></td>
			                        <td><%= list.get(i).getInquiryTitle() %></td>
			                        <td><%= list.get(i).getInquiryEnrollDate() %></td>
			                        <td>
			                        	<% if(list.get(i).getInquiryStatus().equals("N")){ %>
			                        		답변 대기
			                        	<% } else { %>
			                        		답변 완료
			                        	<% } %>
			                        </td>
			                    </tr>
			                <% } %>
	            		<% } %>
                    </table>
                <%if(writer!=0){ %>
	                <div id="write" align="right">
	                	<form action="enrollForm.inquiry" method="post">
	                		<input type="hidden" name="userNo" value="<%=writer%>">
	                		<input type="submit" value="글쓰기">
	                	</form>
	                </div>
                <% } %>
               		<div id="bigPageArea">
	                	<div class="pagingArea" align="center">
				            <%if(currentPage == 1){ %>
				            	<button>&lt;</button>
				            <% } else { %>
				           		<button onclick="location.href='<%=contextPath%>/inquiryForm.service?currentPage=<%=currentPage-1%>#title_FAQ';">&lt;</button>
				            <% } %>
				            
					            <% for(int p = startPage; p <= endPage ; p++){ %>
					            	<% if(p != currentPage){ %>
					            	<button onclick="location.href='<%=contextPath%>/inquiryForm.service?currentPage=<%=p%>#title_FAQ';"><%= p %></button>
					            	<% } else { %>
					            	<button disabled><%= p %></button>
					            	<% } %>
					            <% } %>
			            
				            <%if(currentPage == maxPage){ %>
				            	<button>&gt;</button>
				            <% } else {%>
				            	<button onclick="location.href='<%=contextPath%>/inquiryForm.service?currentPage=<%=currentPage+1%>#title_FAQ';">&gt;</button>
				            <% } %>
				        </div>
			        </div>
            	</div>
	    	</div>
	    <%@ include file= "../common/footer.jsp"%>
	    </div>
	    <script>
	    	$(function(){
	    	   $("#inquiry tr").not("#inquiry tr:first").hover().css("cursor","pointer");
		       $("#inquiry tr").not("#inquiry tr:first").click(function(){
		         var ino = $(this).children().eq(0).text();
		         location.href = "<%=contextPath%>/detail.inquiry?writer=<%=writer%>&ino="+ino; // 쿼리스트링
		       });
		     });
	   </script>
</body>
</html>