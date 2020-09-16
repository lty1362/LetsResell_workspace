<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
</head>
<style>
        #menu3List>:nth-child(3){
	        text-decoration-line: underline;
	        font-weight: bold;
	    }
	    #footer{
	    	margin-top:85px;
	    }
	    #title{
            width: 100%;
            height: 50px;
            background: lightgray;
            font-size: 30px;
            font-weight: bold;
            text-align: center;
            line-height: 1.5em;
            margin-bottom: 30px;
        }
        #content{
            width: 100%;
            height:100%;
            border: 1px solid lightgray;
            margin-bottom: 20px;
        }
        #content_title{
            width: 100%;
            height: 5%;
            font-size: 20px;
            padding-left:3%;
            padding-right:3%;
        }
        #content_title>div{
            background: rgb(240,240,240);
        	width:100%;
        	height:100%;
        	padding-left:10px;
        	border:0px;
        	line-height:2.3em;
        }
        #content_category{
            width: 94%;
            height: 10%;
            margin-left: 3%;
            margin-top: 3%;
        }
        #content_category select{
        	text-align-last:center; 
        	border:1px solid lightgray; 
        	border-radius:3px;
        	height:40px;
        	width:110px;
        }
        #content_category>div{
            float: left;
            text-align: center;
        }
        #category_big{
            width: 48%;
            height: 100px;
            border: 1px solid lightgray;
            margin-right: 4%;
        }
        #category_small{
            width: 48%;
            height: 100px;
            border: 1px solid lightgray;
        }
        #category_big>div:nth-child(1){
            background: lightgray;
            height: 40%;
            font-size: 1.5em;
        }
        #category_big>div:nth-child(2){
            height: 60%;
            font-size: 1.2em;
            padding-top:15px;
        }
        #category_small>div:nth-child(1){
            background: lightgray;
            height: 40%;
            font-size: 1.5em;
        }
        #category_small>div:nth-child(2){
            height: 60%;
            font-size: 1.2em;
            padding-top:15px;
        }

        #content_inquiry{
            width: 94%;
            height: 47%;
            border: 1px solid lightgray;
            margin-top:3%;
            padding:10px;
        }
         #content_answer{
            width: 94%;
            height: 28%;
            border: 1px solid lightgray;
            font-size: 15px;
            margin-top:3%;
            padding:10px;
        }
        #update>input{
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 100px;
            height: 40px;
            border:0px;
        }
</style>
<body>
	<div id="wrap" style="height:1700px;">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
	            <div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	            </div>
	
	            <div id="body_right">
	            	<div id="title">
                    	1:1 문의
                	</div>
                <div id="content">
                    <div id="content_title">
                    	<div>(제목)</div>
                    </div>
                    <div id="content_category">
                        <div id="category_big">
                            <div>대분류</div>
                            <div>결제</div>
                        </div>
                        <div id="category_small">
                            <div>소분류</div>
                            <div>결제이용</div>
                        </div>
                    </div>
                    <div id="content_inquiry">
                    	(문의 내용)
                    </div>
                    <div id="content_answer">(답변 내용)</div>
                </div>
                <div id="update" align="right">
                    <input type="submit" value="답변 완료">
                </div>
	        	</div>
		</div>
	    <%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>