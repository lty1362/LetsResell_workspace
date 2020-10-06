<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_noticeEnroll.css">
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
			<div id="body_left">
				<%@ include file="admin_sideMenu.jsp" %>
		    </div>
			    <div id="body_right">
				   	<form action="enrollNotice.admin" method="post">
				    	<div id="title_content" align="center">
		                    <div id="title">
		                    	<input type="text" name="title" required placeholder="제목을 입력하세요">
		                    </div>
		                    <div id="content">
		                   		<div>
		                   			<textarea name="content" rows=100 cols=100 style="resize:none;" required placeholder="내용을 입력하세요"></textarea>
		                   		</div>
		                    </div>
		                </div>
		                <div id="update" align="right">
		                    <input type="submit" value="작성">
		                </div>
				    </form>
			    </div>
		</div>
		<%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>