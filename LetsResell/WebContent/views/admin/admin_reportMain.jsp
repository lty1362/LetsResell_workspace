<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.service.model.vo.*" %>
<%
	ArrayList<Report> list = (ArrayList<Report>)request.getAttribute("list");
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
<title>관리자페이지</title>
<style>
        #menu3List>:nth-child(4){
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
        #title{
            background: lightgray;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #report{
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }
        #report th{
            background: lightgray;
            height: 25px;
            padding-top: 5px;
            padding-bottom: 5px;
            font-size:21px;
        }
        #report td{
            border: 1px solid lightgray;
            font-size:18px;
        }
        #report tr>th:nth-child(1){
            border-right: 1px solid white;
            
        }
        #report tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #report tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #report tr>th:nth-child(4){
            border-right: 1px solid white;
        }
        #report tr>th:nth-child(5){
            border-right: 1px solid white;
        }
        #report tr td:nth-child(1){
            border-left: 0px;
            width: 5%;
            font-size:21px;
        }
        #report tr td:nth-child(2){
            width: 8%;
        }
        #report tr td:nth-child(3){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            width: 30%;
        }
        #report tr td:nth-child(4){
            width: 26%;
        }
        #report tr td:nth-child(5){
            width: 18%;
        }
        #report tr td:nth-child(6){
            width: 13%;
            border-right: 0px;
        }
        #report a{
        	color:black;
        	text-decoration:none;
        }
        #report a:hover{
        	text-decoration:underline;
        }
</style>
</head>
<body>
    <div id="wrap">
        <%@ include file="../common/header.jsp" %>
        <div id="body">
            <div id="body_left">
            	<%@ include file="admin_sideMenu.jsp" %>
            </div>
            <div id="body_right">
                <div id="title">
                    부정 판매자 신고
                </div>
                <table id="report">
                    <% if(list.isEmpty()){ %>
		            	<tr>
		            		<td colspan="5">조회된 리스트가 없습니다.</td>
		            	</tr>
            		<% } else {%>
	                    <tr>
	                        <th>No</th>
	                        <th>분류</th>
	                        <th>제목</th>
	                        <th>작성자</th>
	                        <th>작성일</th>
	                        <th>답변 상태</th>
	                    </tr>
	            		<% for(int i = 0 ; i < list.size() ; i++){ %>
			                <tr>
			                    <td><%=list.get(i).getReportNo()%></td>
                                <td><%=list.get(i).getReportCategory()%></td>
                                <td><%=list.get(i).getReportTitle() %></td>
                                <td><%=list.get(i).getReportWriter()%>@naver.com</td>
                                <td><%=list.get(i).getReportEnrollDate()%></td>
                                <%if(list.get(i).getReportStatus().equals("Y")){ %>
                                	<td style="color:gray;">답변 완료</td>
                                <%} else{%>
                                	<td>답변 대기</td>
                                <% }%>
			                </tr>
		                <% } %>
            		<% } %>
                </table>
            	<div id="bigPageArea">
                    <div class="pagingArea" align="center">
			            <%if(currentPage == 1){ %>
			            	<button>&lt;</button>
			            <% } else { %>
			           		<button onclick="location.href='<%=contextPath%>/reportMain.admin?currentPage=<%=currentPage-1%>#title';">&lt;</button>
			            <% } %>
			            
				            <% for(int p = startPage; p <= endPage ; p++){ %>
				            	<% if(p != currentPage){ %>
				            	<button onclick="location.href='<%=contextPath%>/reportMain.admin?currentPage=<%=p%>#title';"><%= p %></button>
				            	<% } else { %>
				            	<button disabled><%= p %></button>
				            	<% } %>
				            <% } %>
		            
			            <%if(currentPage == maxPage){ %>
			            	<button>&gt;</button>
			            <% } else {%>
			            	<button onclick="location.href='<%=contextPath%>/reportMain.admin?currentPage=<%=currentPage+1%>#title';">&gt;</button>
			            <% } %>
			        </div>
			    </div>

            </div>
        </div>
        <%@ include file="../common/footer.jsp" %>
    </div>
    <script>
    	$("#report tr").not("#report tr:first").hover().css("cursor","pointer");
    	$("#report tr").not("#report tr:first").click(function(){
    		var rno = $(this).children().eq(0).html();
    		location.href="<%=contextPath%>/updateReportForm.admin?currentPage=<%=currentPage%>&rno="+rno;
    	});
    </script>
</body>
</html>