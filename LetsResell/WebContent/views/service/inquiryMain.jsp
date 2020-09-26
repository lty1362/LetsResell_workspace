<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.service.model.vo.*" %>
<%
	ArrayList<Inquiry> list = (ArrayList<Inquiry>)request.getAttribute("list");
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
		#serviceInquiry>a{
			text-decoration-line: underline;
	        font-weight: bold;
		}
		#body_right{
            width: 75%;
            height: 90%;
            padding: 20px;
            position:relative;
        }
		#title{
            background: lightgray;
            font-size: 30px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #inquiry{
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }
        #inquiry th{
            background: lightgray;
            height: 25px;
            padding-top: 3px;
            font-size:20px;
        }
        #inquiry td{
            border: 1px solid lightgray;
           	font-size:18px;
        }
        #inquiry tr>th:nth-child(1){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(4){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(5){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(6){
            border-right: 1px solid white;
        }
        #inquiry tr td:nth-child(2){
            border-left: 0px;
            width: 3%;
        }
        #inquiry tr td:nth-child(3){
            width: 8%;
        }
        #inquiry tr td:nth-child(4){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            width: 42%;
        }
        #inquiry tr td:nth-child(5){
            width: 12%;
        }
        #inquiry tr td:nth-child(6){
            width: 10%;
            border-right: 0px;
        }
        #write a{
        	background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            display:block;
            text-align:center;
            padding-top:5px;
        }
        #write a:hover{
        	text-decoration:none;
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
                <div id="write" align="right">
                	<a href="<%=contextPath%>/enrollForm.inquiry">글쓰기</a>
                </div>
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
		         location.href = "<%=contextPath%>/detail.inquiry?writer=<%=list.get(0).getInquiryWriter()%>&ino="+ino; // 쿼리스트링
		       });
		     });
	   </script>
</body>
</html>