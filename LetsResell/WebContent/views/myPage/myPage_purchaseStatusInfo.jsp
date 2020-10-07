<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Trade> list = (ArrayList<Trade>)request.getAttribute("list");
	ArrayList<Sale> slist = (ArrayList<Sale>)request.getAttribute("slist");
	ArrayList<Address> addressList = (ArrayList<Address>)request.getAttribute("addressList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../resources/css/myPage/myPage_purchaseStatusInfo.css"%>
</head>
<body>

<%@ include file="../common/header.jsp" %>
	<div class="content">
        <div class="bid"> 
        
        <%@ include file="../myPage/sideMenubar.jsp" %>
            
            <div class="bid_body">
                <p class="bid_title">입찰진행</p>
                <div class="bid_details">

                    <div class="bid_date">
                        <ul>
                            <li style="font-weight: bold;">주문일자</li>
                            <li><%=list.get(0).getTradeCon() %></li>
                            <li style="font-weight: bold; margin-left: 50px;">배송상태</li>
                            <li style="color: red;"><%=list.get(0).getTradeStatus() %></li>
                            <li style="font-weight: bold; margin-left: 50px;">운송장 번호</li>
                            <li style="font-weight: bold; color: green;"><%=list.get(0).getTradeService()%>/<%=list.get(0).getTradeNum()%></li>
                        </ul>
                    </div>
                    
                    <div class="bid_list" style="margin-top: 20px;">
                        <table class="bid_table">
                            <thead>
                                <tr>
                                    <th colspan="2">상품정보</th>
                                    <th style="background-color: rgb(194, 193, 193);">상품금액</th>
                                    <th width="200px" style="background-color: rgb(194, 193, 193);">진행상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td width="150px">
                                        <div class="product_img">
                                            <a href=""><img src="<%=list.get(0).getTitleImg()%>"></a>
                                        </div>
                                    </td>
                                    <td class="product_info">
                                        <dl>
                                            <dt>
                                                <%=list.get(0).getSaleName() %>
                                            </dt>
                                            <dd>
                                                	<%=list.get(0).getSaleCondition()%>/<%=list.get(0).getSaleCategory()%> <br>
                                                	사이즈 : <%=list.get(0).getSaleSize()%>
                                            </dd>
                                        </dl>
                                    </td>
                                    <td width="130px;" style="background-color: rgb(194, 193, 193);">
                                        <h6><%=list.get(0).getTradePrice() %></h6>
                                    </td>
                                    <td style="background-color: rgb(194, 193, 193);">
                                        <button id="btn">배송조회</button> <br>
                                        
                                        <div class="container">
                                            <!-- Button to Open the Modal -->
                                            <button type="button" id="btn" data-toggle="modal" data-target="#infoModal">
                                              	판매자 정보
                                            </button>
                                          
                                            <!-- The Modal -->
                                            <div class="modal" id="infoModal">
                                              <div class="modal-dialog">
                                                <div class="modal-content">
                                                
                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h5 class="modal-title">판매자 정보</h5>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>
                                                  
                                                  <!-- Modal body -->
                                                  <div class="modal-body" style="text-align: center;">
                                                   
                                                    	전화번호
                                                    <span style="margin: 10px; font-weight: bold; color: green;"><%=slist.get(0).getPhone() %></span>

                                                    <br><br>
                                                    
                                                    	택배사
                                                    <span style="margin: 10px; font-weight: bold; color: green;"><%=list.get(0).getTradeService()%></span>

                                                    <br><br>

                                                    	운송장번호
                                                    <span style="margin: 10px; font-weight: bold; color: green;"><%=list.get(0).getTradeNum()%></span>

                                                  </div>

                                                  <br>
                                                  
                                                </div>
                                              </div>
                                            </div>
                                            
                                        </div>
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>

                    <div class="payment">
                        <p>결제금액정보</p>
                        <table>
                            <tr>
                                <th colspan="2">상품금액</th>
                                <th colspan="2" style="background-color: #333;"></th>
                            </tr>
                            <tr>
                                <td>상품</td>
                                <td><%=list.get(0).getTradePrice() %></td>
                                <td style="background-color: #333; color: white;">상품금액</td>
                                <td style="background-color: #333; color: white; text-align: right;"><%=list.get(0).getTradePrice() %></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td rowspan="2" style="background-color: #333;"></td>
                                <td rowspan="2" style="background-color: #333;"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><%=list.get(0).getTradePrice() %></td>
                            </tr>
                            <tr>
                                <th>결제정보</th>
                                <td></td>
                                <td rowspan="2" style="background-color:#333;"></td>
                                <td rowspan="2" style="font-size: 20px; text-align: right; font-weight: bold; background-color: #333; color: white;"><%=list.get(0).getTradePrice() %></td>
                            </tr>
                            <tr>
                                <td>카드결제....무통장입금....</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>

                    <div class="deliveryInfo">
                        <p>배송지 정보</p>
                        <%
							int userNo = loginUser.getUserNo();
							String userId = loginUser.getUserId();
							String userName = loginUser.getName();
							String userPhone = loginUser.getPhone();
							String userPwd = loginUser.getUserPwd();
						%>

                        <table>
                            <tr>
                                <th>수령인</th>
                                <td><%=userName %></td>
                                <td rowspan="3" width="300px">
                                    
                                    	주문자 정보 
                                    <button id="btn" onclick="location.href='<%=contextPath%>/myPage.info?userNo=<%=loginUser.getUserNo()%>'">회원정보변경</button> <br>
                                    	<%=userName %> <br>
                                    <%=userPhone %> <br>

                                </td>
                            </tr>

                            <tr>
                                <th>연락처</th>
                                <td><%=userPhone %></td>
                            </tr>

                            <tr>
                                <th>배송지</th>
                                <td><%=addressList.get(0).getAddressMain()%><%=addressList.get(0).getAddressDetail()%></td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
 
 <%@ include file="../common/footer.jsp" %>
</body>
</html>