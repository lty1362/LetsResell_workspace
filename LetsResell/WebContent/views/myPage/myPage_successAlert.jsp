<%-- 선경_20200921_v1.3 --%>
<%-- 저장 성공 팝업 추가 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<%@ include file="myPage_memInfoView.jsp" %>
	<script>
		$(document).ready(function(){
			window.alert('저장되었습니다.');
		});
	</script>
</body>
</html>