<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레츠리셀</title>
<link href="/LetsResell/resources/css/common/main.css" rel="stylesheet">

</head>
<body>
<!-- header 영역 -->
<%@ include file="/views/common/header.jsp" %>
<!-- filter 영역 -->
<div class="main">
	<div id="main_filter">
		<%@ include file="/views/common/filter.jsp" %>
	</div>
	
	<div id="main_page">
		<%@ include file="/views/common/mainPage.jsp" %>
		<%@ include file="/views/common/filterArea.jsp" %>
	</div>
</div>
<!-- footer 영역 -->
<%@ include file="/views/common/footer.jsp" %>
</body>
<script src="/LetsResell/resources/js/common/mainPage.js" rel="javascript"></script>
</html>