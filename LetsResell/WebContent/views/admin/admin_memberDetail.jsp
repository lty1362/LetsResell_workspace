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
		#userInfo{
            height: 100%;
            border: 1px solid lightgray;
            padding:20px;
            width:70%;
        }
        #userInfo_header1{
            height: 7%;
            background: lightgray;
            font-weight: bold;
            text-align: center;
            font-size: 30px;
            padding: 3px;
        }
        #userInfo_header2{
            height:3%
        }
        #userInfo_top{
            height: 25%;
            border: 1px solid lightgray;
        }
        #userInfo_mid{
            height: 5%;
        }
        #userInfo_bottom{
            height: 60%;
        }

        #userInfo_top>div{
            float:left;
        }
        #userPicture{
            width: 40%;
            height: 100%;
        }
        #userPicture>img{
            width: 100%;
            height: 100%;
        }
        #userInfo_closer{
            width: 60%;
            height: 100%;
            background: lightgray;
            padding-top: 30px;
            padding-left: 10px;
            line-height: 20px;
        }
        #body_right table{
        	text-align: center;
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }
        #body_right table th{
        	background:lightgray;
        	border:1px solid lightgray;
        }
        #body_right table th:nth-child(1), #body_right table th:nth-child(2){
        	border-right:1px solid white;
        }
        #body_right table td{
        	border:1px solid lightgray;
        }
        #body_right table td:nth-child(1){
        	border-left:0px;
        	width:10%
        }
        #body_right table td:nth-child(3){
        	border-right:0px;
        	width:30%
        }
        #userBuy{
            width: 100%;
            height: 25%;
        }
        #userSell{
            width: 100%;
            height: 25%;
        }
        #userReport{
            width: 100%;
            height: 40%;
        }
        #userReport>table tr:nth-last-child(1) td:nth-last-child(1){
        	border-right:0px;
        }
        #userStop{
            width: 100%;
            height: 10%;
        }
        #userStop>div{
            float: left;
        }
        #userStop>div:nth-child(1){
            width: 300px;
            height: 90%;
            border: 1px solid lightgray;
            text-align: center;
            font-weight:bold;
            font-size:20px;
        }
        #userStop>div:nth-child(2){
            width: 80px;
            height: 90%;
        }
        #userStop>div:nth-child(2)>input{
            background: rgb(74,74,74);
            color:white;
            width: 100%;
            height: 100%;
            text-align: center;
            font-weight: bold;
            border:0px;
            font-size:17px;
            
        }
        #body_bottom{
        	padding-left:750px;
        }
        #body_bottom>input{
            border:0px;
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            margin-left: 10px;
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
                <div id="userInfo">
                    <div id="userInfo_header1">회원 조회</div>
                    <div id="userInfo_header2"></div>
                    <div id="userInfo_top">
                        <div id="userPicture">
                            <img src="<%=contextPath%>/resources/images/admin/user.png" alt="">
                        </div>
                        <div id="userInfo_closer">
                            회원코드 : A-001 <br>
                            아이디 : resell123@naver.com <br>
                            이름 : 홍길동 <br>
                            주소 : 서울특별시 이문동 천장산로 20 103호 <br>
                            전화번호 : 010-4923-9493 <br>
                            생년월일 : 1993-03-21
                        </div>
                    </div>
                    <div id="userInfo_mid"></div>
                    <div id="userInfo_bottom">
                        <div id="userBuy">
                            <table>
                                <tr>
                                    <th>No</th>
                                    <th>구매내역</th>
                                    <th>비고</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>$800</td>
                                    <td>2020-06-03</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>$1004</td>
                                    <td>2020-07-01</td>
                                </tr>
                            </table>
                        </div>
                        <div id="userSell">
                            <table>
                                <tr>
                                    <th>No</th>
                                    <th>판매내역</th>
                                    <th>비고</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>$300</td>
                                    <td>2020-05-30</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>$728</td>
                                    <td>2020-06-28</td>
                                </tr>
                            </table>
                        </div>
                        <div id="userReport">
                            <table>
                                <tr>
                                    <th>No</th>
                                    <th>내용</th>
                                    <th>신고 날짜</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>허위 매물 등록</td>
                                    <td>2020-05-21</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>미배송 처리</td>
                                    <td>2020-07-21</td>
                                </tr>
                                <tr>
                                    <td>누적</td>
                                    <td colspan="2">2회</td>
                                </tr>
                            </table>
                        </div>
                        <div id="userStop">
                            <div>활동 상태</div>
                            <div>
                            	<input type="button" value="비활성화">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="body_bottom" align="right">
                <input type="submit" value="수정">
                <input type="button" value="확인">
            </div>

        </div>

        <%@ include file= "../common/footer.jsp"%>
    </div>
</body>
</html>