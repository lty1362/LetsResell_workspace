<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.service.model.vo.*" %>
<%
	ArrayList<FAQ> list = (ArrayList<FAQ>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
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
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_FAQmain.css">
</head>
<body>
	<div id="wrap" style="height:1800px;">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
	        	<%@ include file="admin_sideMenu.jsp" %>
		    </div>
		    <div id="body_right">
		    	<form action="FAQcategory.admin#title_FAQ" method="post">
		    		<input type="hidden" name="currentPage" value="1">
		    		<input type="hidden" name="category" id="sendCategory">
			    	<div id="title_FAQ">FAQ</div>
		                <div id="category">
		                    <input onclick="location.href='<%=contextPath%>/FAQmain.admin?currentPage=1#title_FAQ';" type="button" value="전체">
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
			            		<td colspan="3" style="text-align:center;">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
		                    <tr class="ut">
		                    	<th></th>
	                            <th>No</th>
	                            <th>질문</th>
                        	</tr>
		            		<% for(int i = 0 ; i < list.size() ; i++){ %>
					                <tr>
					                	<td style="display:none;"><%=list.get(i).getFAQno() %></td>
					                	<td class="ut"><input type="checkbox"></td>
					                    <% int count = listCount-(currentPage*10-10); %>
				                        <td><%= count-i %></td>
					                    <td>
			                            	<div class="titleDiv"><%= list.get(i).getFAQtitle() %></div>
			                            </td>
					                </tr>
			                <% } %>
	            		<% } %>
                    </table>
                    
                    <div id="faqUpdate">
	                    <input type="button" value="삭제" data-toggle="modal" data-target="#deleteForm">
	                    <input type="button" value="작성" onclick="location.href='<%=contextPath%>/enrollFAQform.admin';">
	                </div>
                    
                    <div id="bigPageArea">
	                    <div class="pagingArea" align="center">
				            <%if(currentPage == 1){ %>
				            	<button>&lt;</button>
				            <% } else { %>
				           		<button onclick="location.href='<%=contextPath%>/FAQmain.admin?currentPage=<%=currentPage-1%>#title_FAQ';">&lt;</button>
				            <% } %>
				            
					            <% for(int p = startPage; p <= endPage ; p++){ %>
					            	<% if(p != currentPage){ %>
					            	<button onclick="location.href='<%=contextPath%>/FAQmain.admin?currentPage=<%=p%>#title_FAQ';"><%= p %></button>
					            	<% } else { %>
					            	<button disabled><%= p %></button>
					            	<% } %>
					            <% } %>
			            
				            <%if(currentPage == maxPage){ %>
				            	<button>&gt;</button>
				            <% } else {%>
				            	<button onclick="location.href='<%=contextPath%>/FAQmain.admin?currentPage=<%=currentPage+1%>#title_FAQ';">&gt;</button>
				            <% } %>
				        </div>
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
                        <form action="FAQmainDelete.admin" method="POST">
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
			$("#FAQ tr td").not($(".ut")).hover().css("cursor","pointer");
			$("#FAQ tr td").not($(".ut")).click(function(){
		         var fno = $(this).siblings().eq(0).html();
		         location.href = "<%=contextPath%>/FAQdetail.admin?fno="+fno; // 쿼리스트링
		       });
		});
	
		// delete
	    var arr = [];
		check = function(){
	    	$('#FAQ input').each(function(index){
	    	    if($(this).is(":checked")==true){
	    	    	arr.push($(this).closest("td").siblings().eq(0).html());
	    	    }
	    	});
	    	var checked = arr.join();
	    	$("#checked").val(checked);
		}
	
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