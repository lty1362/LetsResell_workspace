<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
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
            width: 25%;
            height: 90%;
            padding: 20px;
        }
        #menu3List>:nth-child(1){
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
		    	<div id="title_content" align="center">
                    <div id="title">(제목)</div>
                    <div id="content">
                        <div>
                            (공지 사항)
                        </div>
                    </div>
                </div>
                <div id="update" align="right">
                	<input type="button" onclick="history.back();" value="뒤로가기">
                    <input type="button" value="수정">
                    <input type="button" value="작성">
                </div>
		    </div>
		</div>
		<%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>