<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
		form{
			height:100%;
		}
		#menu2>*:nth-child(3){
        	font-size:20px;
        	text-decoration:underline;
        	font-weight:bold;
        	padding-left:40px;
        }
		#menu4>*:nth-child(2), #menu4>*:nth-child(3){
	    	display:none;
	    }
	    #menu3>*:nth-child(2), #menu3>*:nth-child(3){
        	display:none;
        }
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
	    }
        #br_1{
            background: lightgray;
            height: 5%;
            border: 1px solid lightgray;
            text-align: center;
            font-size: 30px;
            font-weight:bold;
            padding-top:5px;
        }
        #br_2{
            height: 95%;
            border: 1px solid lightgray;
        }
        #br_2_1{
            height: 20%;
            padding: 20px;
        }
        #br_2_1_1{
        	height:100%;
        }
        #br_2_2{
            height: 80%;
            padding: 20px;
            padding-top: 0px;
        }
        #br_2_1>div{
            float:left
        }
        #br_2_1>div:nth-child(1){
            width:40%;
            height: 100%;
            background: black;
            color: white;
            font-size: 35px;
            text-align: center;
            padding-top: 2em;
        }
        #br_2_1>div:nth-child(2){
            width:60%;
            height: 100%;
        }
        #br_2_1_2{
        	padding-bottom:1px;
        }
        #br_2_1_2>table{
            border-collapse: collapse;
            height: 100%;
            width: 100%;
        }
        #br_2_1_2 input{
        	width:100%;
        	height:40px;
        }
        #br_2_1_2>table td{
            border: 1px solid black;
        }
        #br_2_1_2>table tr>td:nth-child(1){
            background: lightgray;
            font-weight: bold;
            font-size: 20px;
            text-align:center;
        }
        #br_2_1_2>table tr>td:nth-child(2){
        	padding-left:20px;
        	padding-right:20px;
        }
        #br_2_2>table{
            width: 100%;
            height: 100%;
            border-collapse: collapse;

        }
        #br_2_2>table *{
            border: 1px solid black;
        }
        #br_2_2>table th{
            width: 20%;
            background: lightgray;
            text-align:center;
            font-size:20px;
        }
        #br_2_2>table td{
            padding-left: 15px;
        }
        #category>input{
            background: black;
            color: white;
            border: 0px;
            height: 40px;
            border-radius: 3px;
            margin-right: 3px;
            margin-left: 3px;
            font-size:20px;
        }
        #category>:nth-child(1){
            width: 70px;
        }
        #category>:nth-child(2){
            width:120px;
        }
        #category>:nth-child(3){
            width:100px;
        }
        #category>:nth-child(4){
            width:120px;
        }
        #category>:nth-child(5){
            width:140px;
        }
        .brand>input{
            background: black;
            color: white;
            border: 0px;
            width: 100px;
            height: 40px;
            border-radius: 3px;
            margin-right: 3px;
            margin-left: 3px;
            font-size:20px;
        }
        .brand>:nth-child(1){
        	
        }
        .brand>:nth-child(2){
        	
        }
        .brand>:nth-child(3){
        	
        }
        .brand>:nth-child(4){
        	
        }
        .brand>:nth-child(5){
        	
        }
        #size1>input, #size2>input{
            height: 25px;
        }
        #color>input{
        	display:none;
        }
        #color{
        	height:40px;
        	padding-top:10px;
        }
        #color *{
        	float:left;
        }
        #color label{
            color:white;
            width:40px;
            height:40px;
            border-radius:50%;
            cursor:pointer;
            font-size:25px;
            text-align:center;
            display:block;
            margin-right:10px;
        }
        #color>:nth-child(2){
        	background:black;
        }
        #color>:nth-child(4){
        	background:gray;
        }
        #color>:nth-child(6){
        	background:white;
        	color:black;
        }
        #color>:nth-child(8){
        	background:red;
        }
        #color>:nth-child(10){
        	background:orange;
        }
        #color>:nth-child(12){
        	background:yellow;
        	color:black;
        }
        #color>:nth-child(14){
        	background:greenyellow;
        	color:black;
        }
        #color>:nth-child(16){
        	background:blue;
        }
        #color>:nth-child(18){
        	background:purple;
        }
        
        #size input{
        	width:200px;
        	height:40px;
        }
        
        input[name="reviewYoutube"]{
        	width:98%;
        	height:40px;
        }
        
        textarea[name="reviewDetail"]{
        	width:100%;
        	height:100%;
        }
        #table1>:nth-last-child(1)>:nth-last-child(2){
            padding:5px;
            font-size:20px;
        }
        #table1>:nth-last-child(1)>:nth-last-child(1){
            height: 400px;
        }
        #submit{
        	width:98.3%;
        	text-align:right;
        	margin-top:20px;
        	margin-left:15px;
        }
        #submit>input{
        	background: rgb(74,74,74);
            color: white;
            width: 80px;
            height: 40px;
            font-size: 20px;
            border-radius: 3px;
            border: 0px;
        }
        #footer{
        	margin-top:190px;
        }
        
        .filebox label{
	         display: inline-block;
	         color: white;
	         width:100%;
	         height:100%;
	         font-size: 40px;
	         line-height: 160px;
	         vertical-align: middle;
	         background-color: black;
	         cursor: pointer;
	         border: 3px solid black;
         } 
        /* 파일 필드 숨기기 */
        .filebox input[type="file"]{
	         position: absolute;
	         width: 1px;
	         height: 1px;
	         padding: 0;
	         margin: -1px;
	         overflow: hidden;
	         clip:rect(0,0,0,0);
	         border: 0;
         }
         #titleImg{
         	display:none;
         }
</style>
</head>
<body>
<form action="test.do" method="get">
<div id="wrap" style="height:1900px;">
         <%@ include file= "../common/header.jsp"%>
        <div id="body">
			<div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	        </div>
            <div id="body_right">
	        <form action="productEnroll.admin" method="post" enctype="multipart/form-data">
                <div id="br_1">신규 제품 등록</div>
                <div id="br_2">
                    <div id="br_2_1">
                        <div id="br_2_1_1" class="filebox" style="padding:0px;">
                        	<img src="" id="titleImg" width="100%" height="100%">
	                        <label for="imageRegister" id="abc">이미지 등록</label>
	                     	<input type="file" name="image" id="imageRegister" onchange="loadImg(this,1);" required>
                        </div>
                        <div id="br_2_1_2">
                            <table>
                                <tr>
                                    <td>Model</td>
                                    <td id="model"><input type="text" name="productCode" required></td>
                                </tr>
                                <tr>
                                    <td>제품명</td>
                                    <td><input type="text" name="productName" required></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div id="br_2_2">
                        <table id="table1">
	                        <input id="hiddenCategory" type="hidden" name="category">
	                        <input id="hiddenBrand" type="hidden" name="brand">
                            <tr>
                                <th>분류</th>
                                <td id="category">
                                    <input type="button" value="tops">
                                    <input type="button" value="bottoms">
                                    <input type="button" value="outers">
                                    <input type="button" value="footwear">
                                    <input type="button" value="accessories">
                                </td>
                            </tr>
                            <tr>
                                <th>브랜드</th>
                                <td class="brand">
                                    <input type="button" value="brand1">
                                    <input type="button" value="brand2">
                                    <input type="button" value="brand3">
                                    <input type="button" value="brand4">
                                    <input type="button" value="brand5">
                                </td>
                            </tr>
                            <tr>
                                <th>사이즈</th>
                                <td id="size">
                                    <input type="text" name="size1">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" name="size2">
                                </td>
                            </tr>
                            <tr>
                                <th>컬러</th>
                                <td id="color">
                                    <input type="checkbox" id="color_black" name="color" value="black"><label for="color_black"></label>
                                    <input type="checkbox" id="color_gray" name="color" value="gray"><label for="color_gray"></label>
                                    <input type="checkbox" id="color_white" name="color" value="white"><label for="color_white"></label>
                                    <input type="checkbox" id="color_red" name="color" value="red"><label for="color_red"></label>
                                    <input type="checkbox" id="color_orange" name="color" value="orange"><label for="color_orange"></label>
                                    <input type="checkbox" id="color_yellow" name="color" value="yellow"><label for="color_yellow"></label>
                                    <input type="checkbox" id="color_greenyellow" name="color" value="greenyellow"><label for="color_greenyellow"></label>
                                    <input type="checkbox" id="color_blue" name="color" value="blue"><label for="color_blue"></label>
                                    <input type="checkbox" id="color_purple" name="color" value="purple"><label for="color_purple"></label>
                                </td>
                            </tr>
                            <tr>
                                <th>유튜브 리뷰</th>
                                <td><input type="text" name="reviewYoutube"></td>
                            </tr>
                            <tr>
                            	<th>발매 정보</th>
                            	<td>
                            		발매일 : <input type="date" name="releaseDate"> &nbsp;&nbsp;&nbsp;발매가 : <input type="text" name="releasePrice">
                            	</td>
                            </tr>
                            <tr>
                                <th>제품 상세 리뷰</th>
                                <td style="padding:0px;">
                                    <textarea name="reviewDetail" cols="55" rows="10" style="border:none; margin-top:5px; padding:10px"></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
	            <div id=submit>
	                <input type="submit" value="등록" onclick="return submit();">
	            </div>
	            </form>
            </div>
        </div>
       <%@ include file= "../common/footer.jsp"%>
    </div>
</form>
    <script>
	   	$(function(){
	   		
	   		$("#category>input").click(function(){
	   			$(this).css({background:"white", color:"black", border:"1px solid black"});
	   			$("#category>input").not($(this)).css({background:"black", color:"white"});
	   			$("#hiddenCategory").val($(this).val());
	   		});
	   		
	   		$(".brand>input").click(function(){
	   			$(this).css({background:"white", color:"black", border:"1px solid black"});
	   			$(".brand>input").not($(this)).css({background:"black", color:"white"});
	   			$("#hiddenBrand").val($(this).val());
	   		});
	   		
	   		$("#color label").click(function(){
	   			if($(this).text()==""){
	   				$(this).text("V");
	   			}else{
	   				$(this).text("");
	   			}
	   		});
	   		
	   		$("#titleImg").click(function(){
                $("#imageRegister").click();
            });
	   		
	   		$("#footer").css("margin-top","155px");
	   		
	   	});
	   	
	   	function loadImg(inputFile, num){
	   		
	   		$("#abc").css("display","none");
	   		
	        if(inputFile.files.length == 1){
	            var reader = new FileReader();              
	            reader.readAsDataURL(inputFile.files[0])   
	            reader.onload = function(e){                 
	                switch(num){
	                    case 1 : $("#titleImg").attr("src", e.target.result); break;
	                }
	            }
	        }else{
	                switch(num){
	                    case 1 : $("#titleImg").attr("src", null); break;
	                }
	        }
	   		$("#titleImg").css("display","block");
	        
	    }
	   	
    </script>
</body>
</html>