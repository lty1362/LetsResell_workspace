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
        #serviceFAQ>a{
			text-decoration-line: underline;
	        font-weight: bold;
		}	
        #body_right{
            width: 75%;
            height: 90%;
            padding: 20px;
            position:relative;
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
        }
        #FAQ th{
            background: lightgray;
            height: 25px;
            font-size:25px;
            text-align:center;
        }
        #FAQ td{
            border: 1px solid lightgray;
            font-size:20px;
        }
        #FAQ tr>th:nth-child(1){
            border-right: 1px solid white;
        }
        #FAQ tr td:nth-child(1){
            border-left: 0px;
            text-align: center;
            width: 40px;
        }
        #FAQ tr td:nth-child(2){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            cursor:pointer;
        }
        .titleDiv{
        	padding-left:25px;
        	margin-bottom:5px;
        }
        .hideDiv{
        	display:none; 
        }
        .hideDiv div{
        	float:left;
        }
        .hideDiv div:nth-child(1){
        	height:100%; 
        	width:3%;
        }
        .hideDiv div:nth-child(2){
        	height:100%; 
        	width:97%;
        }
        .contentDiv{
        	background:lightgray;
        	height:100%;
        	width:100%;
        	padding-left:3px;
        }
</style>
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
	        	<%@ include file="serviceSideMenu.jsp" %>
		    </div>
		    <div id="body_right">
		    	<form action="FAQcategory.service#title_FAQ" method="post">
		    		<input type="hidden" name="currentPage" value="1">
		    		<input type="hidden" name="category" id="sendCategory">
			    	<div id="title_FAQ">FAQ</div>
		                <div id="category">
		                    <input onclick="location.href='<%=contextPath%>/FAQform.service?currentPage=1#title_FAQ';" type="button" value="전체">
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
				           		<button onclick="location.href='<%=contextPath%>/FAQform.service?currentPage=<%=currentPage-1%>#title_FAQ';">&lt;</button>
				            <% } %>
				            
					            <% for(int p = startPage; p <= endPage ; p++){ %>
					            	<% if(p != currentPage){ %>
					            	<button onclick="location.href='<%=contextPath%>/FAQform.service?currentPage=<%=p%>#title_FAQ';"><%= p %></button>
					            	<% } else { %>
					            	<button disabled><%= p %></button>
					            	<% } %>
					            <% } %>
			            
				            <%if(currentPage == maxPage){ %>
				            	<button>&gt;</button>
				            <% } else {%>
				            	<button onclick="location.href='<%=contextPath%>/FAQform.service?currentPage=<%=currentPage+1%>#title_FAQ';">&gt;</button>
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