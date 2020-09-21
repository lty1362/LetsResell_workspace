<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.member.model.vo.Member" %>    
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String alertMsg = (String)session.getAttribute("alertMsg");
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/LetsResell/resources/css/common/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Lexend+Zetta&display=swap" rel="stylesheet">
<script>
	$(function(){
		var msg = "<%= alertMsg %>"; 
	
		if(msg != "null"){ 
			alert(msg);			
			
			<% session.removeAttribute("alertMsg"); %>
		}
	});
</script>
</head>
<body>
<!-- wrapper 영역 -->
<div id="header">

<!-- header_logo 영역 -->
<div id="header_logo">
    <a href="<%=request.getContextPath()%>">Lets Resell</a>
</div>

<!-- header_search 영역 -->
<div id="header_search">
    <form action="" id="header_search_form">

        <div id="header_search_form_text">
            <input type="search" name="search" placeholder="   Search">
        </div>

        <div id="header_search_form_btn">
            <input type="submit" value="검색">
        </div>

    </form>
</div>

<% if(loginUser == null) { %>
<!-- 로그인 전 div -->
         <!-- header_menu 영역 -->
         <div id="header_menu">
             <div id="header_menu_div">
                 <button onclick="location.href='<%=request.getContextPath()%>/loginForm.me';">로그인</button>
                 <button onclick="location.href='<%=request.getContextPath()%>/loginAgree.me';">회원가입</button>
                 <button onclick="location.href='<%=request.getContextPath()%>/noticeForm.service?currentPage=1';">고객센터</button>
             </div>
         </div>
        
        <% } else{ %>
<!-- 로그인 후 div -->
<div id="header_menu">
	<div id="header_menu_div">
                 <button onclick="location.href='<%=request.getContextPath()%>/logout.me';">로그아웃</button>
                 <button onclick="location.href='<%=request.getContextPath()%>/myPage.info';">마이페이지</button>
                 <button onclick="location.href='<%=request.getContextPath()%>/noticeForm.service?currentPage=1';">고객센터</button>
             </div>
</div>
<% } %>
</div>
	<button style="position:absolute; right:200px; top:100px; background:#8bfcc9; border:0px; color:black; width:80px; height:40px; font-weight:bold; border-radius:5px;" onclick="location.href='<%=request.getContextPath()%>/noticeMain.admin';">관리자</button>
</body>
</html>