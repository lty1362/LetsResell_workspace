<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
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
            background: lightgray;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #inquiry{
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }
        #inquiry th{
            background: lightgray;
            height: 25px;
            padding-top: 5px;
            padding-bottom: 5px;
            font-size:21px;
        }
        #inquiry td{
            border: 1px solid lightgray;
            font-size:18px;
            
        }
        #inquiry tr>th:nth-child(1){
            border-right: 1px solid white;
            
        }
        #inquiry tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(4){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(5){
            border-right: 1px solid white;
        }
        #inquiry tr td:nth-child(1){
            border-left: 0px;
            width: 5%;
            font-size:21px;
        }
        #inquiry tr td:nth-child(2){
            width: 8%;
        }
        #inquiry tr td:nth-child(3){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            width: 42%;
        }
        #inquiry tr td:nth-child(4){
            width: 14%;
        }
        #inquiry tr td:nth-child(5){
            width: 18%;
        }
        #inquiry tr td:nth-child(6){
            width: 13%;
            border-right: 0px;
        }
        #inquiry a{
        	color:black;
        	text-decoration:none;
        }
        #inquiry a:hover{
        	text-decoration:underline;
        }
        #pages th{
            background: rgb(236, 236, 236);
            display: inline-block;
            width: 30px;
            height: 30px;
            line-height: 2em;
            margin-left: 5px;
            margin-right: 5px;
            font-size:large;
            font-weight: 400;
        }
</style>
</head>
<body>
    <div id="wrap">
        <div id="header"></div>

        <div id="body">
            <div id="body_left">
            	<%@ include file="admin_sideMenu.jsp" %>
            </div>

            <div id="body_right">
                <div id="title">
                    1:1 문의
                </div>
                <table id="inquiry">
                    <tr>
                        <th>No</th>
                        <th>분류</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>답변 상태</th>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>결제</td>
                        <td><a href="<%=contextPath%>/views/admin/admin_inquiryDetail.jsp">(제목)</a></td>
                        <td>(아이디)</td>
                        <td>2020-05-31</td>
                        <td>답변 대기</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>기타</td>
                        <td>(제목)</td>
                        <td>(아이디)</td>
                        <td>2020-05-31</td>
                        <td>답변 대기</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>회원</td>
                        <td>(제목)</td>
                        <td>(아이디)</td>
                        <td>2020-05-31</td>
                        <td>답변 완료</td>
                    </tr>
                </table>
                <div id="pages"  align="center">
                    <table>
                        <tr>
                            <th>
                                <
                            </th>
                            <th style="background: rgb(74, 74, 74); color:white">1</th>
                            <th>
                                >
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div id="footer"></div>
    </div>
</body>
</html>