<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.service.model.vo.*" %>
<% 
	Report report = (Report)request.getAttribute("report");
	int currentPage = (int)request.getAttribute("currentPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_reportDetail.css">
</head>
<body>
	<div id="wrap" style="height:1600px;">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
	            <div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	            </div>
	            <div id="body_right">
	            	<form action="updateReport.admin" method="post">
	            		<input type="hidden" name="rno" value="<%=report.getReportNo()%>">
	            		<input type="hidden" name="currentPage" value="<%=currentPage%>">
		            	<div id="title">
	                    	부정 판매자 신고
	                	</div>
	                	<div id="enrollDate">
	                		작성일 : <%=report.getReportEnrollDate() %>
	                	</div>
		                <div id="content">
		                    <div id="content_title">
		                    	<div><%=report.getReportTitle() %></div>
		                    </div>
		                    <div id="content_category">
		                        <div id="category_big">
		                            <div>대분류</div>
		                            <div><%=report.getReportCategory()%></div>
		                        </div>
		                        <div id="category_small">
		                            <div>거래내역</div>
		                            <div><%=report.getReportPastDeal()%></div>
		                        </div>
		                    </div>
		                    <div id="content_report">
		                    	<%=report.getReportContent() %>
		                    </div>
		                    <div id="content_answer">
		                    	<%if(report.getReportStatus().equals("Y")){ %>
		                    		요청하신 접수가 처리되었습니다.
		                    	<%} %>
		                    </div>
		                </div>
		                <div id="update" align="right">
		                    <input type="submit" value="처리 완료">
		                </div>
                	</form>
	        	</div>
			</div>
	    <%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
		$("#footer").css("margin-top","50px");
	</script>
</body>
</html>