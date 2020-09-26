<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
    #menu1>a{
    	text-decoration:none;
    	color:black;
    }
    #menu2>a{
    	text-decoration:none;
    	color:black;
    }
    #menu3>a{
    	text-decoration:none;
    	color:black;
    }
    #menu4>a{
    	text-decoration:none;
    	color:black;
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
    #bigPageArea{
    	width:100%;
    	height:50px;
    	margin-top:35px;
    	position:relative;
    }
    .pagingArea{
    	width:auto;
    	height:auto;
    	margin:auto;
    	position:absolute;
    	left:50%;
    }
    .pagingArea *{
    	float:left;
    }
    .pagingArea button{
        background: rgb(236, 236, 236);
        width: 30px;
        height: 30px;
        margin-left: 5px;
        margin-right: 5px;
        font-size:20px;
        font-weight: 400;
        text-align:center;
        border:0px;
        display:block;
    }
    .pagingArea button[disabled]{
    	background:rgb(74,74,74);
    	color:white;
    }
</style>
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
        	<a href="<%=request.getContextPath()%>/dealMain.admin">∨ 결제관리</a>
        	<hr>
        	<a href="<%=request.getContextPath()%>/dealMain.admin">결제 내역 조회</a>
        </div>
        <div id="menu3">
        	<a href="<%=request.getContextPath()%>/noticeMain.admin">∨ 고객센터</a>
            <hr>
            <div id="menu3List">
	            <a href="<%=request.getContextPath()%>/noticeMain.admin">공지사항</a>
	            <a href="<%=request.getContextPath()%>/FAQmain.admin">FAQ</a>
	            <a href="<%=request.getContextPath()%>/inquiryMain.admin">1:1 문의</a>
	            <a href="<%=request.getContextPath()%>/reportMain.admin">부정 판매자 신고</a>
            </div>
        </div>
    </div>
    <script>
    	$(function(){
    		var width = $(".pagingArea").css("width");
     		if(width.length==4){
	     		$(".pagingArea").css("margin-left",-Number(width.substring(0,2))/2);
     		} else if(width.length==5){
	     		$(".pagingArea").css("margin-left",-Number(width.substring(0,3))/2);
     		} else if(width.length==6){
	     		$(".pagingArea").css("margin-left",-Number(width.substring(0,3))/2);
     		}
    	});
    </script>
</body>
</html>