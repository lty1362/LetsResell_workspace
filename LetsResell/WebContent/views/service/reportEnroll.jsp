<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부정 판매자 신고</title>
<style>
		form{
			height:100%;
			width:auto;
		}
		#serviceReport>a{
			text-decoration-line: underline;
	        font-weight: bold;
		}
		#body_right{
	            width: 75%;
	            height: 800px;
	            padding: 20px;
	            position:relative;
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
            height: 80%;
            border: 1px solid lightgray;
            margin-bottom: 20px;
        }
        #content_title{
            width: 100%;
            height: 7%;
            font-size: 20px;
            padding-left:3%;
            padding-right:3%;
        }
        #content_title>input{
            background: rgb(240,240,240);
        	width:100%;
        	height:100%;
        	padding-left:15px;
        	border:0px;
        	outline-offset:-2px;
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
        #category{
            width: 48%;
            height: 100px;
            border: 1px solid lightgray;
            margin-right: 4%;
        }
        #pastDeal{
            width: 48%;
            height: 100px;
            border: 1px solid lightgray;
        }
        #category>div:nth-child(1){
            background: lightgray;
            height: 40%;
            font-size: 1.5em;
        }
        #category>div:nth-child(2){
            height: 60%;
            font-size: 1.2em;
            padding-top:10px;
        }
        #pastDeal>div:nth-child(1){
            background: lightgray;
            height: 40%;
            font-size: 1.5em;
        }
        #pastDeal>div:nth-child(2){
            height: 60%;
            font-size: 1.2em;
            padding-top:10px;
        }
        #content_report{
            width: 94%;
            height: 65%;
            border: 1px solid lightgray;
            margin-top:8%;
            margin-left:3%;
            padding:10px;
        }
        #content_report>textarea{
        	width:100%;
        	height:100%;
            font-size: 15px;
            border:0px;
        }
        #update>input{
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            border:0px;
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
	            	<div id="title">
                    	부정 판매자 신고
                	</div>
                <form action="enroll.report" method="get">
                <div id="content">
                    <div id="content_title">
                    	<input name="title" required type="text" placeholder="제목을 입력하세요">
                    </div>
                    <div id="content_category">
                        <div id="category">
                            <div>분류</div>
                            <div>
                            	<select name="bigCategory">
                            		<option value="분류" selected>분류</option>
                                    <option value="결제">결제</option>
                                    <option value="물품">물품</option>
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                        </div>
                        <div id="pastDeal">
                        	<div>거래내역</div>
                            <div>
                            	<select name="pastDeal">
                            		<option value="거래내역" selected>거래내역</option>
                                    <option value="2">2020-05-01,에어조던1</option>
                                    <option value="2">2020-05-18,에어조던2</option>
                                    <option value="2">2020-05-30,에어조던3</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div id="content_report">
                    	<textarea name="content" required rows="100" cols="100" style="resize:none;" placeholder="내용을 써주세요"></textarea>
                    </div>
                </div>
                <div id="update" align="right">
                    <input type="submit" onclick="return filter();" value="작성">
                </div>
                </form>
	        </div>
		</div>
	    <%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
		filter = function(){
	    	if($("select[name=bigCategory]").val()=="분류"){
	    		alert("분류를 선택하세요.");
	    		return false;
	    	};
	    	if($("select[name=pastDeal]").val()=="거래내역"){
	    		alert("거래내역을 선택하세요.");
	    		return false;
	    	};
	    }
	</script>
</body>
</html>