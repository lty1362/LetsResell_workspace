<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.service.model.vo.*" %>
<% 
	Inquiry inquiry = (Inquiry)request.getAttribute("inquiry");
	int currentPage = (int)(request.getAttribute("currentPage"));
%>
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
	    #menu4>*:nth-child(2), #menu4>*:nth-child(3){
	    	display:none;
	    }
	    #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
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
            height:840px;
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
            height: 400px;
            border: 1px solid lightgray;
            margin-top:5%;
            margin-left:3%;
            padding:10px;
        }
         #content_answer{
            width: 94%;
            height: 200px;
            border: 1px solid lightgray;
            font-size: 15px;
            margin-top:3%;
            margin-left:3%;
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
        #content_answer>textarea{
        	border:none;
        	resize:none;
        	width:100%;
        	height:100%;
        	padding:10px;
        }
        #enrollDate{
        	background:lightgray;
        	text-align:center;
        	width:200px;
        	font-size:20px;
        	margin-left:596px;
        }
</style>
<body>
	<div id="wrap" style="height:1600px;">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
	            <div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	            </div>
	
	            <div id="body_right">
	            <form action="updateInquiry.admin" method="post">
	            	<input type="hidden" name="ino" value="<%= inquiry.getInquiryNo()%>">
	            	<input type="hidden" name="currentPage" value="<%= currentPage%>">
	            	<div id="title">
                    	1:1 문의
                	</div>
                	<div id="enrollDate">
                		작성일 : <%=inquiry.getInquiryEnrollDate() %>
                	</div>
	                <div id="content">
	                    <div id="content_title">
	                    	<div><%=inquiry.getInquiryContent() %></div>
	                    </div>
	                    <div id="content_category">
	                        <div id="category_big">
	                            <div>대분류</div>
	                            <div><%=inquiry.getInquiryCategoryBig() %></div>
	                        </div>
	                        <div id="category_small">
	                            <div>소분류</div>
	                            <div><%=inquiry.getInquiryCategorySmall() %></div>
	                        </div>
	                    </div>
	                    <div id="content_inquiry">
	                    	<%=inquiry.getInquiryContent() %>
	                    </div>
	                    <%if(inquiry.getInquiryStatus().equals("Y")){ %>
		                    <div id="content_answer">
		                    	<textarea name="answer" required><%=inquiry.getInquiryAnswer() %></textarea>
		                    </div>
	                    <% }else{%>
		                    <div id="content_answer">
		                    	<textarea name="answer" required></textarea>
		                    </div>
	                    <% }%>
	                </div>
                	<div id="update" align="right">
	                    <input type="submit" value="답변 완료">
	                </div>
                </form>
        	</div>
		</div>
	    <%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
		$("#footer").css("margin-top","100px");
	</script>
</body>
</html>