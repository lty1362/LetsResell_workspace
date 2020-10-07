<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.LetsResell.service.model.vo.*"%>
<%
	Notice detail = (Notice)request.getAttribute("detail");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/LetsResell/resources/css/service/noticeDetail.css">
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
	        	<%@ include file="serviceSideMenu.jsp" %>
		    </div>
		    <div id="body_right">
		    	<div id="title_content">
                    <div id="title"><%= detail.getNoticeTitle() %></div>
                    <div id="enrollDate">작성일 : <%= detail.getEnrollDate() %></div>
                    <div id="content">
                        <div>
                        	<%= detail.getNoticeContent() %>
                        </div>
                    </div>
                </div>
                <div id="back" align="right">
                    <input type="button" onclick="history.back();"value="뒤로 가기">
                </div>
		    </div>
		</div>
		<%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>