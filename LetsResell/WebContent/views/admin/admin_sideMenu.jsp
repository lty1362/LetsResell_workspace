<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.member.model.vo.Member" %>    
<%
	Member login = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_sideMenu.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="sideMenu" align="center">
        <div id="menu1">
        	<a href="<%=request.getContextPath()%>/memberMain.admin?currentPage=1">∨ 회원관리</a>
        	<hr>
        	<a href="<%=request.getContextPath()%>/memberMain.admin?currentPage=1">회원 조회</a>
        </div>
        <div id="menu2">
            <a href="<%=request.getContextPath()%>/productMain.admin?currentPage=1">∨ 제품관리</a>
        	<hr>
        	<a href="<%=request.getContextPath()%>/productMain.admin?currentPage=1">제품 조회</a>
        </div>
        <div id="menu4">
        	<a href="<%=request.getContextPath()%>/dealMain.admin?currentPage=1">∨ 결제관리</a>
        	<hr>
        	<a href="<%=request.getContextPath()%>/dealMain.admin?currentPage=1">결제 내역 조회</a>
        </div>
        <div id="menu3">
        	<a href="<%=request.getContextPath()%>/noticeMain.admin?currentPage=1">∨ 고객센터</a>
            <hr>
            <div id="menu3List">
	            <a href="<%=request.getContextPath()%>/noticeMain.admin?currentPage=1">공지사항</a>
	            <a href="<%=request.getContextPath()%>/FAQmain.admin?currentPage=1">FAQ</a>
	            <a href="<%=request.getContextPath()%>/inquiryMain.admin?currentPage=1">1:1 문의</a>
	            <a href="<%=request.getContextPath()%>/reportMain.admin?currentPage=1">부정 판매자 신고</a>
            </div>
        </div>
    </div>
    <script>
    	$(function(){
    		if($(".pagingArea").is("div")){
	    		var width = $(".pagingArea").css("width");
	     		if(width.length==4){
		     		$(".pagingArea").css("margin-left",-Number(width.substring(0,2))/2);
	     		} else if(width.length==5){
		     		$(".pagingArea").css("margin-left",-Number(width.substring(0,3))/2);
	     		} else if(width.length==6){
		     		$(".pagingArea").css("margin-left",-Number(width.substring(0,3))/2);
	     		}
    		}
    	});
    </script>
</body>
</html>