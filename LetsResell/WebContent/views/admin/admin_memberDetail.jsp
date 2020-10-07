<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*, com.LetsResell.service.model.vo.*" %>
<%
	ArrayList<Admin_Sale> saleList = (ArrayList<Admin_Sale>)request.getAttribute("saleList");
	ArrayList<Trade> tradeList = (ArrayList<Trade>)request.getAttribute("tradeList");
	Admin_Member mem = (Admin_Member)request.getAttribute("mem");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_memberDetail.css">
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
                    	<div class="memberHistory">구매 내역</div>
                            <table id="userBuy" class="tableCss dealed">
                                <tr>
                                    <th>No</th>
                                    <th>판매코드</th>
                                    <th>제품명</th>
                                    <th>거래가격</th>
                                    <th>거래체결일</th>
                                </tr>
                                <% for(int i = 0 ; i < tradeList.size() ; i++){ %>
	                                <tr>
	                                    <td><%= tradeList.get(i).getrNum() %></td>
	                                    <td><%= tradeList.get(i).getSaleNo()%></td>
	                                    <td><%= tradeList.get(i).getSaleName()%></td>
	                                    <% 
		                                    String comma = String.valueOf(tradeList.get(i).getTradePrice());
											if(comma.length()>=4 && comma.length()<=6) {
												comma = "₩" + comma.substring(0,comma.length()-3) + "," + comma.substring(comma.length()-3);
											} else if(comma.length()==7 ) {
												comma = "₩" + comma.substring(0,1) + "," + comma.substring(1,4) + "," + comma.substring(4);
											}
										%>
	                                    <td><%= comma %></td>
	                                    <td><%= tradeList.get(i).getTradeEnd() %></td>
	                                </tr>
                                <% } %>
                            </table>
                            <div class="memberHistory">판매 내역</div>
                            <table id="userSell" class="tableCss dealed">
                                <tr>
                                    <th>No</th>
                                    <th>판매코드</th>
                                    <th>제품명</th>
                                    <th>거래가격</th>
                                    <th>거래체결일</th>
                                </tr>
                                <% for(int i = 0 ; i < saleList.size() ; i++){ %>
	                                <tr>
	                                    <td><%= saleList.get(i).getrNum() %></td>
	                                    <td><%= saleList.get(i).getSaleNum() %></td>
	                                    <td><%= saleList.get(i).getSaleName() %></td>
	                                    <% 
		                                    String comma = String.valueOf(saleList.get(i).getTradePrice());
											if(comma.length()>=4 && comma.length()<=6) {
												comma = "₩" + comma.substring(0,comma.length()-3) + "," + comma.substring(comma.length()-3);
											} else if(comma.length()==7 ) {
												comma = "₩" + comma.substring(0,1) + "," + comma.substring(1,4) + "," + comma.substring(4);
											}
										%>
	                                    <td><%= comma %></td>
	                                    <td><%= saleList.get(i).getTradeEnd() %></td>
	                                </tr>
                                <% } %>
                            </table>
                            <div class="memberHistory">신고 내역</div>
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