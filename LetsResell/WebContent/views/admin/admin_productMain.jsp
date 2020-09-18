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
        #filter{
            height:30px;
            width:75px;
            border: 1px solid lightgray;
            text-align-last: center;
            font-size: 13px;
        }
        [type="checkbox"]{
            width: 15px;
            height: 15px;
        }
        #category{
            margin-bottom: 10px;
        }
        #category>input{
            background: rgb(150,150,150);
            color: white;
            font-size: 20px;
            border-radius: 3px;
            margin-right: 1.3%;
            width: 15%;
            border: 0px;
            height: 40px;
        }
        #category input:nth-child(5){
        	width:15.7%;
        }
        #category input:nth-last-child(1){
            margin-right: 0;
        }
        #productList{
            width: 100%;
            height: 70%;
        }
        #productList>table{
            width: 100%;
            border-collapse: collapse;
            border: 1px solid lightgray
        }
        #productList th{
            background: lightgray;
            height: 30px;
            font-size: 15px;
            border-right: 1px solid white;
            text-align: center;
        }
        #productList table tr>th:nth-last-child(1){
            border-right: 1px solid lightgray;
        }
        #productList>table td:nth-child(1){
            width: 12%;
        }
        #productList>table td:nth-child(2){
            width: 35%;
        }
        #productList>table td:nth-child(3){
            width: 15%;
        }
        #productList>table td:nth-child(4){
            width: 15%;
        }
        #productList>table td:nth-child(5){
            width: 15%;
        }
        #productList>table td:nth-child(6){
            width: 8%;
        }
        #productList td{
            border: 1px solid lightgray;
            text-align:center;
            font-size:15px;
        }

        #productUpdate>input{
            border:1px solid rgb(74, 74, 74);
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            margin-left: 10px;
            margin-bottom:10px;
        }
        #productUpdate{
            text-align:right;
        }
        #search{
            margin-top: 20px;
        }
        #search>select{
            height:40px;
            width:100px;
            border: 1px solid lightgray;
            text-align-last: center;
            font-size: 20px;
        }
        #search_in{
            display:inline-block;
            height: 40px;
            width: 400px;
            border: 1px solid lightgray;
        }
        #search_in>[type="search"]{
            border:0px;
            height: 100%;
            width: 85%;
            outline-offset:-2px;
           	padding-top:4px;
        }
        #search_in>[type="submit"]{
            background: lightgray;
            border: 0px;
            height: 100%;
            width: 15%;
            font-weight: bold;
            font-size:20px;
        }
        #pages th{
            background: rgb(236, 236, 236);
            display: inline-block;
            width: 30px;
            height: 30px;
            margin-left: 5px;
            margin-right: 5px;
            font-size:20px;
            font-weight: 400;
            margin-top:30px;
            text-align:center;
        }
        .modal-header{
        	margin-top:40px;
        	font-size:50px;
        }
        .modal-body button{
        	width:100px;
        	height:50px;
        	font-size:23px;
        	margin:20px;
        	margin-bottom:40px;
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
                <div id="category">
                    <input type="button" value="전체">
                    <input type="button" value="상의">
                    <input type="button" value="하의">
                    <input type="button" value="아우터">
                    <input type="button" value="악세사리">
                    <input type="button" value="신발">
                </div>
                <div id="productList">
                    <table>
                        <tr>
                            <th>제품 코드</th>
                            <th>제품명</th>
                            <th>브랜드</th>
                            <th>컬러</th>
                            <th>사이즈</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>P-001</td>
                            <td>에어 조던1</td>
                            <td>나이키</td>
                            <td>blue, red</td>
                            <td>210~250</td>
                            <td><input type="checkbox"></td>
                        </tr>
                    </table>
                </div>
                <div id="productUpdate">
                    <input type="button" value="삭제" data-toggle="modal" data-target="#deleteForm">
                    <input type="button" value="등록" onclick="location.href='<%=contextPath%>/views/admin/admin_productDetail.jsp';">
                </div>
                <div id="search"  align="center">
                    <select name="filter" id="filter">
                        <option value="code" selected>제품코드</option>
                        <option value="name">제품명</option>
                        <option value="brand">브랜드</option>
                        <option value="color">컬러</option>
                    </select>
                    <div id="search_in">
                        <input type="search"><input type="submit" value="검색">
                    </div>
                </div>
                <div id="pages"  align="center">
                    <table>
                        <tr>
                            <th>
                                <
                            </th>
                            <th>1</th>
                            <th style="background: rgb(74, 74, 74); color:white">2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>
                                >
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <!-- 비밀번호변경 버튼 클릭 시 보여질 Modal -->
        <div class="modal" id="deleteForm">
            <div class="modal-dialog">
                <div class="modal-content">
                
                    <!-- Modal Header -->
                    <div class="modal-header">
                    <h4 class="modal-title">정말 삭제하시겠습니까?</h4>
                    <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                    </div>
                    
                    <!-- Modal body -->
                    <div class="modal-body" align="center">

                        <form action="" method="POST">
                            <br>
                            <button type="submit" class="btn btn-secondary">예</button>
                            <button type="submit" class="btn btn-secondary">아니오</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file= "../common/footer.jsp"%>
    </div>
    <script>
    	$(function(){
   			$("#productList>table tr").hover().css("cursor","pointer");
     		$("#productList>table tr").not($("#users>table tr:first")).click(function(){
     			location.href = "<%=contextPath%>/views/admin/admin_productModify.jsp";
    		});
    	});
    </script>
</body>
</html>