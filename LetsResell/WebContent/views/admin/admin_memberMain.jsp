<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
		#menu1>*:nth-child(3){
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
	    #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
		#userList>div{
            margin-bottom: 20px;
        }
        #userList{
        	height:100%;
        }
        #users *{
            border:1px solid lightgray;
            border-collapse: collapse;
        }
        #users table{
            width: 100%;
            text-align: center;
        }
        #users th{
            font-size:20px;
            background: lightgray;
            border-right:1px solid white;
        }
        #users td{
        	font-size:15px;
        }
        #users th,td{
            padding-top: 3px;
            padding-bottom: 3px;
        }
        #userTitle{
            background: lightgray;
            font-weight: bold;
            text-align: center;
            font-size: 33px;
            padding: 5px;
        }
        #search{
        	margin-top:60px;
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
                <div id="userList">
                    <div id="userTitle">회원 조회</div>
                    <div id="users">
                        <table>
                            <tr>
                                <th>회원코드</th>
                                <th>이름</th>
                                <th>주소</th>
                                <th>전화번호</th>
                                <th style="border-right: 1px solid lightgray;">이메일</th>
                            </tr>
                            <tr>
                                <td>A-001</td>
                                <td>나연</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-002</td>
                                <td>정연</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-003</td>
                                <td>모모</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-004</td>
                                <td>사나</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-005</td>
                                <td>지효</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-006</td>
                                <td>미나</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-007</td>
                                <td>다현</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-008</td>
                                <td>채영</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                            <tr>
                                <td>A-009</td>
                                <td>쯔위</td>
                                <td>강동구 강동대로 205 JYP Center</td>
                                <td>010-2225-8100</td>
                                <td>twice&once@naver.com</td>
                            </tr>
                        </table>
                    </div>
                    <div id="search" align="center">
                        <select name="filter" id="filter">
                            <option value="" selected>내용</option>
                            <option value="userCode">회원코드</option>
                            <option value="userName">이름</option>
                            <option value="address">주소</option>
                            <option value="phone">전화번호</option>
                            <option value="email">이메일</option>
                        </select>
                        <div id="search_in">
                            <input type="search"><input type="submit" value="검색">
                        </div>
                    </div>
                    <div id="pages" align="center">
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
        </div>
       <%@ include file= "../common/footer.jsp"%>
    </div>
    <script>
    	$(function(){
    		$("#users>table tr").hover().css("cursor","pointer")
    		$("#users>table tr").not($("#users>table tr:first")).click(function(){
    			location.href = "<%=contextPath%>/memberDetail.admin";
    		});
    	});
    </script>
</body>
</html>