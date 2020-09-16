<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        }
        #content{
            height: 90%;
        }
        #content>div{
            border: 1px solid lightgray;
            font-size: 40px;
            height: 100%;
            padding-top: 4em;
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
		    	<div id="title_content" align="center">
                    <div id="title">(제목)</div>
                    <div id="content">
                        <div>
                            (공지 사항)
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