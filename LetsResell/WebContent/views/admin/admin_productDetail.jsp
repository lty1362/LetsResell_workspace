<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
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
            text-align: center;
        }
        #br_2_1_2>table td{
            border: 1px solid black;
        }
        #br_2_1_2>table tr>td:nth-child(1){
            background: lightgray;
            font-weight: bold;
            font-size: 20px;
        }
        #model{
            font-size: 25px;
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
            width: 70px;
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
        #table1>:nth-last-child(1)>:nth-last-child(1){
            height: 500px;
        }
        #submit{
        	width:98.3%;
        	text-align:right;
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
</style>
</head>
<body>
<form action="test.do" method="get">
<div id="wrap" style="height:2000px;">
         <%@ include file= "../common/header.jsp"%>
        <div id="body">
			<div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	        </div>
            <div id="body_right">
                <div id="br_1">신규 제품 등록</div>
                <div id="br_2">
                    <div id="br_2_1">
                        <div id="br_2_1_1">이미지 등록</div>
                        <div id="br_2_1_2">
                            <table>
                                <tr>
                                    <td>Model</td>
                                    <td id="model">166800C</td>
                                </tr>
                                <tr>
                                    <td>제품명</td>
                                    <td>에어조던 1</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div id="br_2_2">
                        <table id="table1">
                            <tr>
                                <th>분류</th>
                                <td id="category">
                                    <input type="button" value="Tops">
                                    <input type="button" value="Bottoms">
                                    <input type="button" value="Outers">
                                    <input type="button" value="Footwear">
                                    <input type="button" value="Accessories">
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
                                <td id="size1">
                                    <input type="text">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text"> (mm)
                                </td>
                                <td style="display: none;" id="size2">
                                    <input type="text"> ~ <input type="text">
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
                                <td><a href="http://www.youtube.com" target="_blank" style="text-decoration: none; border:0px">http://www.youtube.com</a></td>
                            </tr>
                            <tr>
                                <th>제품 상세 리뷰</th>
                                <td>
                                    <textarea name="" id="" cols="55" rows="10">
                                        천고에 영원히 들어 별과 때문이다. 불어 이는 끓는 되는 이상은 때에, 뿐이다. 얼음에 방황하여도, 눈이 발휘하기 밥을 이것이야말로 끝에 이상이 주는 힘있다. 사랑의 사는가 얼음 황금시대다. 그들은 불어 생의 이상의 희망의 구하기 역사를 철환하였는가? 가지에 바이며, 소리다.이것은 산야에 속에 사막이다. 무엇을 더운지라 기쁘며, 보라. 없으면, 봄바람을 충분히 있으랴? 무엇이 그들의 무엇을 소담스러운 같이, 놀이 청춘의 그리하였는가? <br><br>

것은 돋고, 사는가 천자만홍이 내는 우리 위하여서 가는 없는 이것이다. 하는 피가 때까지 가장 것이다. 곳이 위하여 충분히 청춘에서만 약동하다. 실현에 설레는 용감하고 피고, 웅대한 그들에게 미묘한 사는가 부패뿐이다. 위하여, 인간의 생의 무엇을 얼음 사막이다. 인간의 뼈 트고, 황금시대다. 풀밭에 일월과 노년에게서 열매를 위하여서 대한 타오르고 주는 때문이다. 수 방지하는 같지 거친 능히 있는 그것을 거선의 풀이 힘있다. 눈에 과실이 무엇을 부패뿐이다. 그들의 이상이 이상 못하다 붙잡아 것이다. 끓는 찬미를 꾸며 예수는 끓는 약동하다. <br><br>

이것을 속에서 설산에서 있다. 거선의 있는 목숨을 것이다. 것이 무한한 얼음에 만물은 것이다. 군영과 따뜻한 풀이 실로 때에, 용기가 사막이다. 내려온 실로 눈이 날카로우나 때까지 생명을 같이 있는 힘있다. 위하여, 사랑의 맺어, 것이다. 속잎나고, 남는 품었기 할지니, 보배를 인생에 스며들어 천하를 발휘하기 것이다. 능히 이상의 맺어, 위하여, 보라. 대중을 그들을 구하지 바이며, 끓는다. 가슴에 그들에게 미인을 것이다. 그들에게 따뜻한 같은 긴지라 약동하다.
                                    </textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div id=submit>
                <input type="submit" value="등록">
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
	   		});
	   		$(".brand>input").click(function(){
	   			$(this).css({background:"white", color:"black", border:"1px solid black"});
	   			$(".brand>input").not($(this)).css({background:"black", color:"white"});
	   		});
	   		$("#color label").click(function(){
	   			if($(this).text()==""){
	   				$(this).text("V");
	   			}else{
	   				$(this).text("");
	   			}
	   		});
	   	});
    </script>
</body>
</html>