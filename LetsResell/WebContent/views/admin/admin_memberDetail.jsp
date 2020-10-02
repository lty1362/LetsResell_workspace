<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%
	ArrayList<Admin_Sale> saleList = (ArrayList<Admin_Sale>)request.getAttribute("list");
	Admin_Member mem = (Admin_Member)request.getAttribute("mem");
%>
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
            height: auto;
            border: 1px solid lightgray;
            padding:20px;
            width:80%;
            margin:auto;
        }
        #userInfo_header1{
            height: 50px;
            background: lightgray;
            font-weight: bold;
            text-align: center;
            font-size: 30px;
            padding: 3px;
        }
        #userInfo_header2{
            height:30px;
        }
        #userInfo_top{
            height: 200px;
            border: 1px solid lightgray;
        }
        #userInfo_mid{
            height: 30px;
        }
        #userInfo_bottom{
            height: auto;
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
            padding-top: 10px;
            padding-left: 10px;
            line-height: 25px;
            font-size:18px;
        }
        #userInfo_closer p{
        	margin:0px;
        }
        #userInfo_closer textarea{
        	background:lightgray;
        	resize:none;
        	border:0px;
        	padding:0px;
        }
        #body_right table{
        	text-align: center;
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }
        #body_right table th{
        	background:lightgray;
        	font-size:17px;
        	padding:3px;
        }
        #body_right table td{
        	border:1px solid lightgray;
        	font-size:15px;
        	padding:3px;
        }
        .tableCss tr:nth-child(1) th{
        	border-right:1px solid white;
        }
        .tableCss tr:nth-child(1) th:nth-last-child(1){
        	border-right:1px solid lightgray;
        }
        .dealed td:nth-child(1){
        	width:40px;
        }
        .dealed td:nth-child(2){
        	width:100px;
        }
        .dealed td:nth-child(4){
        	width:120px;
        }
        .dealed td:nth-child(5){
        	width:140px;
        }
        #userBuy{
            width: 100%;
            margin-bottom:20px;
        }
        #userSell{
            width: 100%;
            margin-bottom:20px;
        }
        #userReport{
            width: 100%;
            margin-bottom:30px;
        }
        #userReport td:nth-child(1){
			width:40px;        
        }
        #userReport td:nth-child(3){
			width:140px;        
        }
        #userStop{
            width: 100%;
            height: 50px;
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
            padding-top:5px;
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
        	padding-right:82px;
        	margin-top:30px;
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
        #footer{
        	position:absolute;
        	top:1800px;
        }
</style>
</head>
<body>
	<div id="wrap" style="height:2000px;">
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
                            <p>회원코드 : <%= mem.getUserNo()%></p>
                            <p>아이디 : <%= mem.getUserId()%></p>
                            <p>이름 : <%= mem.getUserName()%></p>
                            <p>전화번호 : <%= mem.getPhone()%></p>
                            <% if(mem.getUserSsn() != null){ %>
                            	<p>생년월일 : <%= mem.getUserSsn()%></p>
                            <% } %>
                            <p>가입일 : <%=mem.getEnrollDate() %>
                        </div>
                    </div>
                    <div id="userInfo_mid"></div>
                    <div id="userInfo_bottom">
                            <table id="userBuy" class="tableCss dealed">
                                <tr>
                                    <th>No</th>
                                    <th>제품코드</th>
                                    <th>제품명</th>
                                    <th>거래가격</th>
                                    <th>거래체결일</th>
                                </tr>
                                <% for(int i = 0 ; i < saleList.size() ; i++){ %>
	                                <tr>
	                                    <td><%= saleList.get(i).getrNum() %></td>
	                                    <td><%= saleList.get(i).getPrNum()%></td>
	                                    <td><%= saleList.get(i).getSaleName() %></td>
	                                    <% 
		                                    String comma = String.valueOf(saleList.get(i).getSalePrice());
											if(comma.length()>=4 && comma.length()<=6) {
												comma = "₩" + comma.substring(0,comma.length()-3) + "," + comma.substring(comma.length()-3);
											} else if(comma.length()==7 ) {
												comma = "₩" + comma.substring(0,1) + "," + comma.substring(1,4) + "," + comma.substring(4);
											}
										%>
	                                    <td><%= comma %></td>
	                                    <td><%= saleList.get(i).getSaleDate() %></td>
	                                </tr>
                                <% } %>
                            </table>
                            <table id="userSell" class="tableCss dealed">
                                <tr>
                                    <th>No</th>
                                    <th>제품코드</th>
                                    <th>제품명</th>
                                    <th>거래가격</th>
                                    <th>거래체결일</th>
                                </tr>
                                <% for(int i = 0 ; i < saleList.size() ; i++){ %>
	                                <tr>
	                                    <td><%= saleList.get(i).getrNum() %></td>
	                                    <td><%= saleList.get(i).getPrNum() %></td>
	                                    <td><%= saleList.get(i).getSaleName() %></td>
	                                    <% 
		                                    String comma = String.valueOf(saleList.get(i).getSalePrice());
											if(comma.length()>=4 && comma.length()<=6) {
												comma = "₩" + comma.substring(0,comma.length()-3) + "," + comma.substring(comma.length()-3);
											} else if(comma.length()==7 ) {
												comma = "₩" + comma.substring(0,1) + "," + comma.substring(1,4) + "," + comma.substring(4);
											}
										%>
	                                    <td><%= comma %></td>
	                                    <td><%= saleList.get(i).getSaleDate() %></td>
	                                </tr>
                                <% } %>
                            </table>
                            <table id="userReport" class="tableCss">
                                <tr>
                                    <th>No</th>
                                    <th>내용</th>
                                    <th>신고 날짜</th>
                                </tr>
                                <tr>
                                    <td>누적</td>
                                    <td colspan="2"><%=mem.getReportCount() %>회</td>
                                </tr>
                            </table>
                        <div id="userStop">
                        	<%if(mem.getBlacklistStatus().equals("Y")){ %>
                            	<div id="activation">비활성 상태</div>
                        	<% }else{ %>
                            	<div id="activation">활성 상태</div>
                        	<% } %>
                            <div>
                            	<input id="activationButton" type="button" value="변경" onclick="black();">
                            </div>
                        </div>
                    </div>
                </div>
                <div id="body_bottom" align="right">
	                <input type="button" value="확인" onclick="history.back();">
	            </div>
            </div>
        </div>
        <%@ include file= "../common/footer.jsp"%>
    </div>
    <script>
    	function black(){
    		
	    	$.ajax({
	    		url:"blackYesNo.admin",
                data:{userNo:<%=mem.getUserNo()%>, black:"<%=mem.getBlacklistStatus()%>"},
                type:"get",
                success:function(blackYN){
                	if(blackYN =="Y"){
                		
                		$.ajax({
            	    		url:"blackMember.admin",
                            data:{userNo:<%=mem.getUserNo()%>, black:"Y"},
                            type:"get",
                            success:function(){
                            	alert("변경 성공!!");
                            },
                            error:function(){
                            	console.log("실패");
                            }
            	    	});
                		
                	}else{
                		
                		$.ajax({
            	    		url:"blackMember.admin",
                            data:{userNo:<%=mem.getUserNo()%>, black:"N"},
                            type:"get",
                            success:function(){
                            	alert("변경 성공!!");
                            },
                            error:function(){
                            	console.log("실패");
                            }
            	    	});
                		
                	}
                },
                error:function(){
                	console.log("실패");
                }
	    	});
	    	
	    	if($("#activation").html()=="비활성 상태"){
		    	$("#activation").html("활성 상태");
	    	}else{
		    	$("#activation").html("비활성 상태");
	    	}
	    	
    	}
    </script>
</body>
</html>