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
<style>
        #menu3List>:nth-child(2){
	        text-decoration-line: underline;
	        font-weight: bold;
	    }
	    #menu4>*:nth-child(2), #menu4>*:nth-child(3){
	    	display:none;
	    }
	    #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
	    }
	    #title_FAQ{
            background: lightgray;
            font-size: 30px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #category{
            width: 100%;
            height: 50px;
        }
        #category>input{
            background: rgb(150, 150, 150);
            color: white;
            border: 0px;
            width: 17%;
            height: 40px;
            border-radius: 3px;
            display:block;
            float: left;
            margin-right: 3.7%;
            font-size: 20px;
        }
        #category>input:nth-child(5){
            margin-right: 0;
        }
        #FAQ{
            border-collapse: collapse;
            width: 100%;
            font-size:20px;
        }
        #FAQ th{
           background: lightgray;
           height: 25px;
           font-size:25px;
           padding:5px;
           text-align:center;
        }
        #FAQ td{
            border: 1px solid lightgray;
        }
        #FAQ tr>th:nth-child(1){
            background: white;
        }
        #FAQ tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #FAQ tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #FAQ tr td:nth-child(2){
            border: 0px;
            width: 10px;
        }
        #FAQ tr td:nth-child(3){
            border-left: 0px;
            text-align: center;
            width: 30px;
        }
        #FAQ tr td:nth-child(4){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            font-size: 0.9em;
            cursor:pointer;
        }
        #FAQ tr td:nth-child(5){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            font-size: 0.9em;
            width: 17%;
            text-align: center;
        }
        #FAQ a{
        	color:black;
        }
        #FAQ [type=checkbox]{
        	width:20px;
        	height:20px;
        }
        #FAQ>input{
            border:1px solid rgb(74, 74, 74);
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            margin-left: 10px;
            margin-bottom:10px;
            margin-top:20px;
        }
        #faqUpdate>input{
            border:1px solid rgb(74, 74, 74);
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            margin-left: 10px;
            margin-bottom:10px;
            margin-top:20px;
        }
        #faqUpdate{
            text-align:right;
        }
        .titleDiv{
        	margin-bottom:5px;
        }
</style>
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
			            		<td colspan="3">조회된 리스트가 없습니다.</td>
			            	</tr>
	            		<% } else {%>
		                    <tr>
		                    	<th></th>
	                            <th>No</th>
	                            <th>질문</th>
                        	</tr>
		            		<% for(int i = 0 ; i < list.size() ; i++){ %>
					                <tr>
					                	<td style="display:none;"><%=list.get(i).getFAQno() %></td>
					                	<td><input type="checkbox"></td>
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
		
			$("#FAQ tr").not("#FAQ tr:first").click(function(){
		         var fno = $(this).children(0).eq(0).text();
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