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
<style>
        #serviceNotice>a{
			text-decoration-line: underline;
	        font-weight: bold;
		}	
        #body_right{
            width: 75%;
            height: 90%;
            padding: 20px;
            position:relative;
        }
        #title_content{
        	height:700px;
        }
        #title{
            background: lightgray;
            height: 50px;
            padding-top:5px;
            font-size: 25px;
            text-align:center;
        }
        #content{
            height: 90%;
        }
        #content>div{
            border: 1px solid lightgray;
            font-size: 20px;
            height: 100%;
            padding:10px;
        }
        #back>input{
            border:1px solid rgb(74, 74, 74);
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:18px;
            width: 80px;
            height: 40px;
        }
        #enrollDate{
        	border-right:1px solid lightgray;
        	border-left:1px solid lightgray;
        	text-align:right;
        	padding-right:10px;
        }
</style>
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