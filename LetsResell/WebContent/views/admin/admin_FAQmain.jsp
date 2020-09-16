<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
		#menu3List>:nth-child(2){
	        text-decoration-line: underline;
	        font-weight: bold;
	    }
        #body_right{
            width: 75%;
            height: 90%;
            padding: 20px;
            position:relative;
        }
        #title_FAQ{
            background: lightgray;
            font-size: 30px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #category{
            width: 100%;
            height: 5%;
            margin-bottom: 10px;
        }
        #category>input{
            background: rgb(150, 150, 150);
            color: white;
            border: 0px;
            width: 17%;
            height: 40px;
            border-radius: 3px;
            display:block;
            float: left;
            margin-right: 3.7%;
            font-size: 20px;
        }
        #category>input:nth-child(5){
            margin-right: 0;
        }
        #FAQ{
            border-collapse: collapse;
            width: 100%;
        }
        #FAQ th{
            background: lightgray;
            height: 25px;
            font-size:25px;
            text-align:center;
        }
        #FAQ td{
            border: 1px solid lightgray;
            font-size:20px;
        }
        #FAQ tr>th:nth-child(1){
        	background:white;
        }
        #FAQ tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #FAQ tr td:nth-child(1){
        	border:0px;
        }
        #FAQ [type=checkbox]{
        	width:20px;
        	height:20px;
        }
        #FAQ tr td:nth-child(2){
            border-left: 0px;
            text-align: center;
            width: 40px;
        }
        #FAQ tr td:nth-child(3){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            cursor:pointer;
        }
        #deleteButton{
        	padding-top:20px;
        }
        #deleteButton>button{
        	background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            text-align:center;
            border:0px;
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
		    	<div id="title_FAQ">FAQ</div>
                <div id="category">
                    <input type="button" value="전체">
                    <input type="button" value="회원 / 계정">
                    <input type="button" value="결제">
                    <input type="button" value="이벤트">
                    <input type="button" value="기타">
                </div>
                <div id="br_2">
                    <table id="FAQ">
                        <tr>
                        	<th></th>
                            <th>No</th>
                            <th>질문</th>
                        </tr>
                        <tr>
                        	<td><input type="checkbox"></td>
                            <td>3</td>
                            <td>
                            	<div>무엇을 품으며, 구하지 과실이 그리하였는가?</div>
                            	<p style="display:none; background:lightgray;">
                            		 ► yo~ bro~
                            	</p>
                            </td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox"></td>
                            <td>2</td>
                            <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox"></td>
                            <td>1</td>
                            <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
                        </tr>
                    </table>
                </div>
                <div id="deleteButton" align="right">
                		<button type="button">삭제</button>
                </div>
		    </div>
	    </div>
		<%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
        $(function(){
            $("td>div").click(function(){
                var p = $(this).next();
                if(p.css("display") == "none"){
                    $(this).siblings("p").slideUp();
                    p.slideDown();
                }else{
                    p.slideUp();
                }
            });
        });
    </script>
</body>
</html>