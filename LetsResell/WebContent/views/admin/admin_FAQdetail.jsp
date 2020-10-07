<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.service.model.vo.*" %>
<%
	FAQ faq = (FAQ)request.getAttribute("faq");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_FAQdetail.css">
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
				<%@ include file="admin_sideMenu.jsp" %>
		    </div>
		    <div id="body_right">
		    	<form action="updateFAQ.admin" method="post">
		    		<input type="hidden" name="fno" value="<%=faq.getFAQno() %>">
			    	<div id="title_content" align="center">
	                    <div id="title">
	                    	<input type="text" name="title" value="<%=faq.getFAQtitle() %>">
	                    </div>
	                    <div id="content">
	                        <div>
	                            <textarea name="content"><%=faq.getFAQcontent() %></textarea>
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