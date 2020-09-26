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
			    	<div id="title_FAQ">FAQ</div>
		                <div id="category">
		                    <input onclick="location.href='<%=contextPath%>/FAQform.service?currentPage=1#title_FAQ';" type="button" value="전체">
		                    <input type="submit" name="category" value="회원">
		                    <input type="submit" name="category" value="결제">
		                    <input type="submit" name="category" value="이벤트">
		                    <input type="submit" name="category" value="기타">
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
		                            	<div><%= list.get(i).getFAQtitle() %></div>
		                            	<p style="display:none; background:lightgray;">
		                            		 ► <%= list.get(i).getFAQcontent() %>
		                            	</p>
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
				            	<form action="FAQcategory.service#title_FAQ" method="post">
				            		<input type="hidden" name="category" value="<%=category%>">
				            		<input type="hidden" name="currentPage" value="<%=currentPage-1%>">
				           			<button type="submit">&lt;</button>
				           		</form>
				            <% } %>
				            
					            <% for(int p = startPage; p <= endPage ; p++){ %>
					            	<% if(p != currentPage){ %>
					            	<form action="FAQcategory.service#title_FAQ" method="post">
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
				            	<form action="FAQcategory.service#title_FAQ" method="post">
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
                    $("td p").not($(this)).slideUp();
                    p.slideDown();
                }else{
                    p.slideUp();
                }
            });
        });
    </script>
</body>
</html>