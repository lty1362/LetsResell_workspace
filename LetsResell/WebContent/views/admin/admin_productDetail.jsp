<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%	
	Admin_Product product = (Admin_Product)request.getAttribute("product");
%>
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
	        <form action="productModify.admin" method="post" enctype="multipart/form-data">
	        	<input type="hidden" name="pno" value="<%=product.getPRno()%>">
                <div id="br_1">제품 수정</div>
                <div id="br_2">
                    <div id="br_2_1">
                        <div id="br_2_1_1" class="filebox" style="padding:0px; padding-left:40px; padding-right:40px;">
                        	<img src="<%=contextPath%>/resources/images/admin/<%=product.getPRimage() %>" id="titleImg" width="100%" height="100%">
	                        <label for="imageRegister" id="abc">이미지 등록</label>
	                     	<input type="file" name="image" id="imageRegister" onchange="loadImg(this,1);" required>
                        </div>
                        <div id="br_2_1_2">
                            <table>
                                <tr>
                                    <td>Model</td>
                                    <td id="model"><input type="text" name="productCode" required value="<%=product.getPRmodel()%>"></td>
                                </tr>
                                <tr>
                                    <td>제품명</td>
                                    <td><input type="text" name="productName" required value="<%=product.getPRname()%>"></td>
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
                                	<%if(product.getPRsize()!= null){ %>
                                		<%String[] size = product.getPRsize().split("~"); %>
                                    	<input type="text" name="size1" value="<%=size[0]%>">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" name="size2" value="<%=size[1]%>">
                                    <% }else{ %>
                                    	<input type="text" name="size1">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" name="size2">
                                    <% } %>
                                </td>
                            </tr>
                            <tr>
                                <th>컬러</th>
                                <td id="color">
                                    <input type="checkbox" id="color_black" name="color" value="black"><label for="color_black" id="blackColor"></label>
                                    <input type="checkbox" id="color_gray" name="color" value="gray"><label for="color_gray" id="grayColor"></label>
                                    <input type="checkbox" id="color_white" name="color" value="white"><label for="color_white" id="whiteColor"></label>
                                    <input type="checkbox" id="color_red" name="color" value="red"><label for="color_red" id="redColor"></label>
                                    <input type="checkbox" id="color_orange" name="color" value="orange"><label for="color_orange" id="orangeColor"></label>
                                    <input type="checkbox" id="color_yellow" name="color" value="yellow"><label for="color_yellow" id="yellowColor"></label>
                                    <input type="checkbox" id="color_greenyellow" name="color" value="greenyellow"><label for="color_greenyellow" id="greenyellowColor"></label>
                                    <input type="checkbox" id="color_blue" name="color" value="blue"><label for="color_blue" id="blueColor"></label>
                                    <input type="checkbox" id="color_purple" name="color" value="purple"><label for="color_purple" id="purpleColor"></label>
                                </td>
                            </tr>
                            <tr>
                                <th>유튜브 리뷰</th>
                                <td><input type="text" name="reviewYoutube" value="<%=product.getPRreviewYoutube()%>"></td>
                            </tr>
                            <tr>
                            	<th>발매 정보</th>
                            	<td>
                            		발매일 : <input type="date" name="releaseDate" value="<%=product.getPRreleaseDate()%>"> &nbsp;&nbsp;&nbsp;발매가 : <input type="text" name="releasePrice" value="<%=product.getPRreleasePrice()%>">
                            	</td>
                            </tr>
                            <tr>
                                <th>제품 상세 리뷰</th>
                                <td style="padding:0px;">
                                    <textarea name="reviewDetail" cols="55" rows="10" style="border:none; margin-top:5px; padding:10px"><%=product.getPRreviewDetail() %></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
	            <div id=submit>
	                <input type="submit" value="수정" onclick="return check();">
	            </div>
	            </form>
            </div>
        </div>
       <%@ include file= "../common/footer.jsp"%>
    </div>
    <script>
	   	$(function(){
	   		
   			$("#abc").css("display","none");
	   		
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
	   		
	   		<%if(product.getPRcategory().equals("tops")){%>
	   			$("input[value=tops]").click();
	   		<%}else if(product.getPRcategory().equals("bottoms")){%>
	   			$("input[value=bottoms]").click();
	   		<%}else if(product.getPRcategory().equals("outers")){%>
	   			$("input[value=outers]").click();
	   		<%}else if(product.getPRcategory().equals("footwear")){%>
	   			$("input[value=footwear]").click();
	   		<%}else{%>
	   			$("input[value=accessories]").click();
	   		<%}%>
	   		
	   		<%if(product.getPRbrand().equals("brand1")){%>
	   			$("input[value=brand1]").click();
	   		<%}else if(product.getPRbrand().equals("brand2")){%>
	   			$("input[value=brand2]").click();
	   		<%}else if(product.getPRbrand().equals("brand3")){%>
	   			$("input[value=brand3]").click();
	   		<%}else if(product.getPRbrand().equals("brand4")){%>
	   			$("input[value=brand4]").click();
	   		<%}else{%>
	   			$("input[value=brand5]").click();
	   		<%}%>
	   		
	   		<%if(product.getPRcolor().indexOf("black")>=0){%>
	   			$("#blackColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("gray")>=0){%>
	   			$("#grayColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("white")>=0){%>
	   			$("#whiteColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("red")>=0){%>
	   			$("#redColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("orange")>=0){%>
	   			$("#orangeColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("yellow")>=0){%>
	   			$("#yellowColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("greenyellow")>=0){%>
	   			$("#greenyellowColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("blue")>=0){%>
	   			$("#blueColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("purple")>=0){%>
	   			$("#purpleColor").click();
	   		<%}%>
<%-- 	   		<%if(product.getPRcolor().indexOf("black")>=0){%>
	   			$("#blackColor").click();
	   			$("#color_black").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("gray")>=0){%>
	   			$("#grayColor").click();
	   			$("#color_gray").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("white")>=0){%>
	   			$("#whiteColor").click();
	   			$("#color_white").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("red")>=0){%>
	   			$("#redColor").click();
	   			$("#color_red").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("orange")>=0){%>
	   			$("#orangeColor").click();
	   			$("#color_orange").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("yellow")>=0){%>
	   			$("#yellowColor").click();
	   			$("#color_yellow").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("greenyellow")>=0){%>
	   			$("#greenyellowColor").click();
	   			$("#color_greenyeloow").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("blue")>=0){%>
	   			$("#blueColor").click();
	   			$("#color_blue").attr("checked",true);
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("purple")>=0){%>
	   			$("#purpleColor").click();
	   			$("#color_purple").attr("checked",true);
	   		<%}%> --%>
	   		
	   		
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
	   		if($("#imageRegister").val() == ""){
	   			$("#imageRegister").attr("disabled",true);
	   		}
	   	}
	   	
    </script>
</body>
</html>