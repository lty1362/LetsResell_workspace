<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
		form{
			height:100%;
			width:100%;
		}
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
        #title>input{
            background: lightgray;
        	height:100%;
        	width:100%;
        	padding:5px;
        	border:0px;
        }
        #content{
            height: 90%;
        }
        #content>div{
            border: 1px solid lightgray;
            font-size: 20px;
            height: 100%;
        }
        #content>div>textarea{
        	padding:10px;
        	height:100%;
        	width:100%;
        	border:none;
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
				   	<form action="enrollNotice.admin" method="post">
				    	<div id="title_content" align="center">
		                    <div id="title">
		                    	<input type="text" name="title" required placeholder="제목을 입력하세요">
		                    </div>
		                    <div id="content">
		                   		<div>
		                   			<textarea name="content" rows=100 cols=100 style="resize:none;" required placeholder="내용을 입력하세요"></textarea>
		                   		</div>
		                    </div>
		                </div>
		                <div id="update" align="right">
		                    <input type="submit" value="작성">
		                </div>
				    </form>
			    </div>
		</div>
		<%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>