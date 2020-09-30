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
        #title{
            background: lightgray;
            height: 5%;
            border: 1px solid lightgray;
            text-align: center;
            font-size: 30px;
            font-weight:bold;
            padding-top:5px;
        }
        #registerWrap{
            height: 1200px;
            border: 1px solid lightgray;
        }
        #registerImage{
            height: 250px;
            padding: 20px;
        }
        #registerImageForm{
        	height:100%;
        }
        #registerImage div{
            float:left;
            border:2px solid lightgray;
        }
        #registerImageMain{
        	width:40%;
        	height:100%;
        }
        #registerImageDetail{
        	width:60%;
        	height:100%;
        }
        #registerImageDetail div{
        	float:left;
        }
        #registerImageDetail1{
        	width:50%;
        	height:50%;
        }
        #registerImageDetail2{
        	width:50%;
        	height:50%;
        }
        #registerImageDetail3{
        	width:50%;
        	height:50%;
        }
        #registerImageDetail4{
        	width:50%;
        	height:50%;
        }
        
        #registerProduct{
        	width:95%;
        	margin:auto;
        }
        #registerProduct>table{
            width: 100%;
            height: 100%;
            border-collapse: collapse;
        }
        #registerProduct>table *{
            border: 1px solid black;
        }
        #registerProduct>table th{
            width: 20%;
            background: lightgray;
            text-align:center;
            font-size:20px;
        }
        #registerProduct>table td{
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
        input[name="productCode"]{
        	width:98%;
        	height:40px;
        }
        input[name="productName"]{
        	width:98%;
        	height:40px;
        }
        textarea[name="reviewDetail"]{
        	width:100%;
        	height:100%;
        }
        #table1 tr{
        	height:70px;
        }
        #table1 tr:nth-last-child(2){
        	padding:5px;
            font-size:20px;
        }
        #table1 tr:nth-last-child(1){
        	height:365px;
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
	         color: white;
	         width:100%;
	         height:100%;
	         text-align:center;
	         background-color: black;
	         cursor: pointer;
         }
         #main{
         	line-height:200px;
         	font-size:40px;
         }
         #registerImageDetail label{
         	line-height:100px;
         	font-size:25px;
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
</style>
</head>
<body>
<div id="wrap" style="height:1900px;">
         <%@ include file= "../common/header.jsp"%>
        <div id="body">
			<div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	        </div>
            <div id="body_right">
	        <form action="productEnroll.admin" method="post" enctype="multipart/form-data">
                <div id="title">신규 제품 등록</div>
                <div id="registerWrap">
                    <div id="registerImage">
                        <div id="registerImageMain" class="filebox" style="padding:0px;">
                        	<img src="" id="titleImg" width="100%" height="100%">
	                        <label for="registerMainImage" id="main">메인 이미지 등록</label>
	                     	<input type="file" name="image1" id="registerMainImage" onchange="loadImg(this,1);" required>
                        </div>
                        <div id="registerImageDetail">
	                        <div id="registerImageDetail1" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg1" width="100%" height="100%">
		                        <label for="registerDetailImage1" id="detail1">상세 이미지 등록</label>
		                     	<input type="file" name="image2" id="registerDetailImage1" onchange="loadImg(this,2);">
	                        </div>
	                        <div id="registerImageDetail2" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg2" width="100%" height="100%">
		                        <label for="registerDetailImage2" id="detail2">상세 이미지 등록</label>
		                     	<input type="file" name="image3" id="registerDetailImage2" onchange="loadImg(this,3);">
	                        </div>
	                        <div id="registerImageDetail3" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg3" width="100%" height="100%">
		                        <label for="registerDetailImage3" id="detail3">상세 이미지 등록</label>
		                     	<input type="file" name="image4" id="registerDetailImage3" onchange="loadImg(this,4);">
	                        </div>
	                        <div id="registerImageDetail4" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg4" width="100%" height="100%">
		                        <label for="registerDetailImage4" id="detail4">상세 이미지 등록</label>
		                     	<input type="file" name="image5" id="registerDetailImage4" onchange="loadImg(this,5);">
	                        </div>
                        </div>
                    </div>
                    <div id="registerProduct">
                        <table id="table1">
	                        <input id="hiddenCategory" type="hidden" name="category">
	                        <input id="hiddenBrand" type="hidden" name="brand">
                            <tr>
                                <th>Model</th>
                                <td><input type="text" name="productCode" required></td>
                            </tr>
                            <tr>
                                <th>제품명</th>
                                <td><input type="text" name="productName" required></td>
                            </tr>
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
                            		발매일 : <input type="date" name="releaseDate" required> &nbsp;&nbsp;&nbsp;발매가 : <input type="text" name="releasePrice" required>
                            	</td>
                            </tr>
                            <tr>
                                <th>제품 상세 리뷰</th>
                                <td style="padding:0px;">
                                    <textarea name="reviewDetail" style="border:none; margin-top:5px; padding:10px"></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
	            <div id=submit>
	                <input type="submit" value="등록" onclick="return check();">
	            </div>
	            </form>
            </div>
        </div>
       <%@ include file= "../common/footer.jsp"%>
    </div>
    <script>
	   	$(function(){
	   		
	   		// category, brand, color 요청값
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
	   		
	   		// 이미지 등록
	   		$("#titleImg").click(function(){
                $("#registerMainImage").click();
            });
	   		
	   		$("#detailImg1").click(function(){
	   			$("#registerDetailImage1").click();
	   		});
	   		
	   		$("#detailImg2").click(function(){
	   			$("#registerDetailImage2").click();
	   		});
	   		
	   		$("#detailImg3").click(function(){
	   			$("#registerDetailImage3").click();
	   		});
	   		
	   		$("#detailImg4").click(function(){
	   			$("#registerDetailImage4").click();
	   		});
	   		
	   		// 첫 로딩 시 이미지 숨기기
	   		$("#titleImg").css("display","none");
	   		$("#detailImg1").css("display","none");
	   		$("#detailImg2").css("display","none");
	   		$("#detailImg3").css("display","none");
	   		$("#detailImg4").css("display","none");
	   		
	   		// footer 위치 조정
	   		$("#footer").css("margin-top","155px");
	   		
	   	});
	   	
	   	function test(){
	   		console.log();
	   	}
	   	
	   	// 미리보기
	   	function loadImg(inputFile, num){
			
   			if($("#registerMainImage").val()!=""){
		   		$("#main").css("display","none");
	   		}
   			if($("#registerDetailImage1").val()!=""){
		   		$("#detail1").css("display","none");
	   		}
   			if($("#registerDetailImage2").val()!=""){
		   		$("#detail2").css("display","none");
	   		}
   			if($("#registerDetailImage3").val()!=""){
		   		$("#detail3").css("display","none");
	   		}
   			if($("#registerDetailImage4").val()!=""){
		   		$("#detail4").css("display","none");
	   		}
				   			
	        if(inputFile.files.length == 1){
	            var reader = new FileReader();              
	            reader.readAsDataURL(inputFile.files[0])   
	            reader.onload = function(e){                 
                switch(num){
                    case 1 : $("#titleImg").attr("src", e.target.result); break;
                    case 2 : $("#detailImg1").attr("src", e.target.result); break;
                    case 3 : $("#detailImg2").attr("src", e.target.result); break;
                    case 4 : $("#detailImg3").attr("src", e.target.result); break;
                    case 5 : $("#detailImg4").attr("src", e.target.result); break;
                }
	            }
	        }else{
                switch(num){
                    case 1 : $("#titleImg").attr("src", null); break;
                    case 2 : $("#detailImg1").attr("src", null); break;
                    case 3 : $("#detailImg2").attr("src", null); break;
                    case 4 : $("#detailImg3").attr("src", null); break;
                    case 5 : $("#detailImg4").attr("src", null); break;
                }
	        }
	        
	        if($("#registerMainImage").val()!=""){
		        $("#titleImg").css("display","block");
	   		}
	        if($("#registerDetailImage1").val()!=""){
		        $("#detailImg1").css("display","block");
	   		}
	        if($("#registerDetailImage2").val()!=""){
		        $("#detailImg2").css("display","block");
	   		}
	        if($("#registerDetailImage3").val()!=""){
		        $("#detailImg3").css("display","block");
	   		}
	        if($("#registerDetailImage4").val()!=""){
		        $("#detailImg4").css("display","block");
	   		}
	        
	    }
	   	
	   	// required
	   	function check(){
	   		if($("#hiddenCategory").val() == ""){
	   			alert("분류를 선택하세요!");
	   			return false;
	   		}
	   		if($("#hiddenBrand").val() == ""){
	   			alert("브랜드를 선택하세요!");
	   			return false;
	   		}
	   		if($("#color label").text() == ""){
	   			alert("컬러를 선택하세요!");
	   			return false;
	   		}
	   	}
	   	
    </script>
</body>
</html>