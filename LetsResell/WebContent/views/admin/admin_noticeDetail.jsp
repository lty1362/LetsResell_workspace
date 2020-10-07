<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.service.model.vo.*" %>
<%
	Notice notice = (Notice)request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_noticeDetail.css">
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
				<%@ include file="admin_sideMenu.jsp" %>
		    </div>
		    <div id="body_right">
		    	<form action="updateNotice.admin" method="post">
		    		<input type="hidden" name="nno" value="<%=notice.getNoticeNo()%>">
			    	<div id="title_content" align="center">
	                    <div id="title">
	                    	<input type="text" name="title" value="<%=notice.getNoticeTitle()%>">
	                    </div>
	                    <div id="content">
	                        <div>
	                            <textarea name="content"><%=notice.getNoticeContent()%></textarea>
	                        </div>
	                    </div>
	                </div>
	                <div id="update" align="right">
	                    <input type="submit" value="수정">
	                </div>
                </form>
		    </div>
		</div>
		<%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>