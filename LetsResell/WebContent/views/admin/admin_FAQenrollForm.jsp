<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
        #menu3List>:nth-child(2){
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
            height:50px;
            font-size:25px;
        }
        #title>*{
        	float:left;
        }
        #title input{
        	width:712px;
        	height:100%;
        	border:0px;
            background: lightgray;
        }
        #title select{
        	font-size:30px;
        	background:black;
        	color:white;
        	width:100px;
        	height:100%;
        	text-align-last:center;
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
		    	<form action="enrollFAQ.admin" method="post">
			    	<div id="title_content" align="center">
	                    <div id="title">
	                    	<input type="text" name="title">
	                    	<select name="category">
	                    		<option value="user">user</option>
	                    		<option value="cash">cash</option>
	                    		<option value="event">event</option>
	                    		<option value="etc">etc</option>
	                    	</select>
	                    </div>
	                    <div id="content">
	                        <div>
	                            <textarea name="content"></textarea>
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