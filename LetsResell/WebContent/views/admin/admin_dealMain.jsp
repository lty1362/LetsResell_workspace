<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
		#menu3>*:nth-child(2), #menu3>*:nth-child(3){
        	display:none;
        }
        #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
	    }
        #menu4>*:nth-child(3){
        	font-size:20px;
        	text-decoration:underline;
        	font-weight:bold;
        	padding-left:5px;
        }
        [type="submit"]{
            background: rgb(74,74,74);
            color: white;
            width: 80px;
            height: 40px;
            font-size: 15px;
            border-radius: 3px;
            border: 0px;
        }
        #title{
            background: lightgray;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #deal{
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }
        #deal th{
            background: lightgray;
            height: 25px;
            padding-top: 3px;
        }
        #deal td{
            border: 1px solid lightgray;
            padding-top: 5px;
            padding-bottom: 5px;
            
        }
        #deal tr>th:nth-child(1){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(4){
            border-right: 1px solid white;
        }
        #deal tr>th:nth-child(5){
            border-right: 1px solid white;
        }
        #deal tr td:nth-child(1){
            border-left: 0px;
            width: 10%;
        }
        #deal tr td:nth-child(2){
            width: 10%;
        }
        #deal tr td:nth-child(3){
            border-right: 0px;
            width: 27%;
        }
        #deal tr td:nth-child(4){
            width: 27%;
        }
        #deal tr td:nth-child(5){
            width: 13%;
        }
        #deal tr td:nth-child(6){
            width: 13%;
            border-right: 0px;
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
                <div id="title">
                    거래 내역 조회
                </div>
                <table id="deal">
                    <tr>
                        <th>체결코드</th>
                        <th>제품코드</th>
                        <th>판매자</th>
                        <th>구매자</th>
                        <th>거래 체결일</th>
                        <th>구매 완료일</th>
                    </tr>
                    <tr>
                        <td>D-003</td>
                        <td>P-001</td>
                        <td>(제목)</td>
                        <td>(아이디)</td>
                        <td>(DATE)</td>
                        <td>(DATE)</td>
                    </tr>
                    <tr>
                        <td>D-002</td>
                        <td>P-001</td>
                        <td>(제목)</td>
                        <td>(아이디)</td>
                        <td>(DATE)</td>
                        <td>(DATE)</td>
                    </tr>
                    <tr>
                        <td>D-001</td>
                        <td>P-001</td>
                        <td>(제목)</td>
                        <td>(아이디)</td>
                        <td>(DATE)</td>
                        <td>(DATE)</td>
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
       <%@ include file= "../common/footer.jsp"%>
	</div>
</body>
</html>