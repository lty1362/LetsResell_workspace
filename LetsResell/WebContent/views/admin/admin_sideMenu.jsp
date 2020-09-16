<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
	textarea:focus, input:focus{
        	outline:none;
    }
    div{
            box-sizing: border-box;
    }
    #wrap{
        border: 1px solid black;
        width:1200px;
        height:1300px;
        margin:auto;
    }
    #body{
        width: 90%;
        height: 65%;
        margin:auto;
        margin-top:5%;
    }
    #body>div{
        float:left;
    }
    #body_left{
        width: 20%;
        height: 90%;
        padding: 20px;
    }
    #sideMenu{
            background: lightgray;
            height: 100%;
            padding-top:20%;
    }
    #sideMenu hr{
            width: 90%;
            height: 1px;
            border:0;
            background: black;;
    }
    #menu3List>a{
    	text-decoration:none;
        font-size: 20px;
        text-align: right;
        margin-right: 15px;
        margin-bottom: 30px;
        display:block;
        color:black;
    }
    #menu1{
        margin-bottom: 20px;
    }
    #menu2{
        margin-bottom: 20px;
    }
    #menu4{
        margin-bottom: 20px;
    }
    
    #sideMenu>div{
        font-size: 27px;
        border:0px;
        letter-spacing: 2px;
    }
    #body_right{
            width: 80%;
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
</style>
</head>
<body>
	<div id="sideMenu" align="center">
        <div id="menu1">
            ∨ 회원관리
        </div>
        <div id="menu2">
            ∨ 제품관리
        </div>
        <div id="menu4">∨ 결제관리</div>
        <div id="menu3">
        <a>∨ 고객센터</a>
            <hr>
            <div id="menu3List">
	            <a href="<%=contextPath%>/noticeForm.admin">공지사항</a>
	            <a href="<%=contextPath%>/FAQform.admin">FAQ</a>
	            <a href="<%=contextPath%>/inquiryForm.admin">1:1 문의</a>
	            <a href="<%=contextPath%>/reportForm.admin">부정 판매자 신고</a>
            </div>
        </div>
    </div>
</body>
</html>