<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.service.model.vo.*" %>
<%
	ArrayList<FAQ> list = (ArrayList<FAQ>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
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
<title>고객센터</title>
<link rel="stylesheet" href="/LetsResell/resources/css/service/FAQcategory.css">
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
	        	<%@ include file="serviceSideMenu.jsp" %>
		    </div>
		    <div id="body_right">
		    	<form action="FAQcategory.service#body" method="post">
		    		<input type="hidden" name="currentPage" value="1">
		    		<input type="hidden" name="category" id="sendCategory">
			    	<div id="title_FAQ">FAQ</div>
		                <div id="category">
		                    <input onclick="location.href='<%=contextPath%>/FAQform.service?currentPage=1#body';" type="button" value="전체">
		                    <input onclick="user();" type="submit" value="회원">
		                    <input onclick="cash();" type="submit" value="결제">
		                    <input onclick="event1();" type="submit" value="이벤트">
		                    <input onclick="etc1();" type="submit" value="기타">
		                </div>
                </form>
                <div id="br_2">
                    <table id="FAQ">
                        <% if(list.isEmpty()){ %>
			            	<tr>
			            		<td colspan="3">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
		                    <tr>
	                            <th>No</th>
	                            <th>질문</th>
                        	</tr>
		            		<% for(int i = 0 ; i < list.size() ; i++){ %>
				                <tr>
				                    <% int count = listCount-(currentPage*10-10); %>
			                        <td><%= count-i %></td>
				                    <td>
		                            	<div class="titleDiv"><%= list.get(i).getFAQtitle() %></div>
		                            	<div class="hideDiv">
		                            		<div>
		                            			► 
		                            		</div>
		                            		<div class="contentDiv">
				                            	<%= list.get(i).getFAQcontent() %>
		                            		</div>
		                            	</div>
		                            </td>
				                </tr>
			                <% } %>
	            		<% } %>
                    </table>
                    <div id="bigPageArea">
	                    <div class="pagingArea" align="center">
				            <%if(currentPage == 1){ %>
				            	<button>&lt;</button>
				            <% } else { %>
				            	<form action="FAQcategory.service#body" method="post">
				            		<input type="hidden" name="category" value="<%=category%>">
				            		<input type="hidden" name="currentPage" value="<%=currentPage-1%>">
				           			<button type="submit">&lt;</button>
				           		</form>
				            <% } %>
				            
					            <% for(int p = startPage; p <= endPage ; p++){ %>
					            	<% if(p != currentPage){ %>
					            	<form action="FAQcategory.service#body" method="post">
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
				            	<form action="FAQcategory.service#body" method="post">
				            		<input type="hidden" name="category" value="<%=category%>">
				            		<input type="hidden" name="currentPage" value="<%=currentPage+1%>">
				           			<button type="submit">&gt;</button>
				           		</form>
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
		        $("td>div").click(function(){
		            var p = $(this).next();
		            if(p.css("display") == "none"){
		                $(".hideDiv").not($(this)).slideUp();
		                p.slideDown();
		            }else{
		                p.slideUp();
		            }
		        });
		    });
		 
			// category
	        function user(){
	        	$("#sendCategory").val("user")
	        };
	        
	        function cash(){
	        	$("#sendCategory").val("cash")
	        };
	        
	        function event1(){
	        	$("#sendCategory").val("event")
	        };
	        
	        function etc1(){
	        	$("#sendCategory").val("etc")
	        };
		 
    </script>
</body>
</html>