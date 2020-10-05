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
<style>
        #menu3List>:nth-child(1){
	        text-decoration-line: underline;
	        font-weight: bold;
	    }
	    #menu4>*:nth-child(2), #menu4>*:nth-child(3){
	    	display:none;
	    }
	    #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
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
            height: 50px;
            font-size: 25px;
        }
        #title input{
        	width:100%;
        	height:100%;
        	border:0px;
            background: lightgray;
        	
        }
        #content{
            height: 90%;
        }
        #content>div{
            border: 1px solid lightgray;
            font-size: 20px;
            height: 100%;
        }
        #content textarea{
        	padding:10px;
        	border:none;
        	width:100%;
        	height:100%;
        	resize:none;
        }
        #update>input{
            border:1px solid rgb(74, 74, 74);
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            margin-top: 20px;
            margin-left: 10px;
        }
</style>
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