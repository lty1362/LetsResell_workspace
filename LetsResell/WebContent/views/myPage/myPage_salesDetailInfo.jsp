<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Bid> blist = (ArrayList<Bid>)request.getAttribute("blist");
	ArrayList<Sale> slist = (ArrayList<Sale>)request.getAttribute("slist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../resources/css/myPage/myPage_salesDetailInfo.css"%>
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
                            <li style="font-weight: bold;">입찰날짜</li>
                            <li style="color: red;"><%=slist.get(0).getSaleEnrollDate()%></li>
                            <li style="font-weight: bold; margin-left: 50px;">입찰기간</li>
                            <li style="color: red;"><%=slist.get(0).getSalePeriod() %></li>
                            <div class="container">
                                <!-- Button to Open the Modal -->
                                <button type="button" id="btn" data-toggle="modal" data-target="#myModal">
                                 	 입찰기간연장
                                </button>
                              
                                <!-- The Modal -->
                                <div class="modal" id="myModal">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                    
                                      <!-- Modal Header -->
                                      <div class="modal-header">
                                        <h5 class="modal-title">입찰기간연장</h5>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      </div>
                                      
                                      <!-- Modal body -->
                                      <div class="modal-body" style="text-align: center;">
                                       
                                        <span style="margin-right: 10px;">기간선택</span>
                                        <select style="width:300px;">
                                            <option value="1">1일 기간 연장</option>
                                            <option value="2">2일 기간 연장</option>
                                            <option value="3">3일 기간 연장</option>
                                            <option value="4">4일 기간 연장</option>
                                            <option value="5">5일 기간 연장</option>
                                            <option value="6">6일 기간 연장</option>
                                            <option value="7">7일 기간 연장</option>
                                        </select>

                                        <br>
                                        <span style="color: red;">* 최대 7일까지 연장 가능합니다.</span>

                                      </div>
                                      
                                      <!-- Modal footer -->
                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                      </div>
                                      
                                    </div>
                                  </div>
                                </div>
                                
                              </div>
                        </ul>
                    </div>
                    
                    <div class="bid_list" style="margin-top: 20px;">
                        <table class="bid_table">
                            <thead>
                                <tr>
                                    <th colspan="2">상품정보</th>
                                    <th width="250px" style="background-color: rgb(194, 193, 193);">진행상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td width="150px">
                                        <div class="product_img">
                                            <a href=""><img src="<%=slist.get(0).getTitleImg()%>"></a>
                                        </div>
                                    </td>
                                    <td class="product_info">
                                        <dl>
                                            <dt>
                                                <%=slist.get(0).getSaleName() %>
                                            </dt>
                                            <dd>
                                                	<%=slist.get(0).getSaleCondition() %> / <%=slist.get(0).getSaleCategory() %> <br>
                                                	사이즈 : <%=slist.get(0).getSaleSize() %> / 색상 : <%=slist.get(0).getPrColor() %>
                                            </dd>
                                        </dl>
                                    </td>
                                    <td style="background-color: rgb(194, 193, 193);">
                                        <span><%=slist.get(0).getSaleStatus() %></span>
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>

                    <div class="purchase_info">
                        
                        <p>구매입찰정보</p>

                        <table>
                            <thead>
                                <tr>
                                    <th width="100"></th>
                                    <th>입찰자 아이디</th>
                                    <th>구매입찰</th>
                                    <th>날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            <%if(blist.isEmpty()) {%>
                            
                            	<th colspan="4">등록된 입찰이 없습니다.</th>
                            
                            <%}else { %>
                            	<%for(int i = 0; i < blist.size(); i++) {%>
	                                <tr>
	                                    <td><%=i+1%></td>
	                                    <td><%=blist.get(i).getMemUserId() %></td>
	                                    <td><%=blist.get(i).getBidPrice() %></td>
	                                    <td><%=blist.get(i).getBidDate() %></td>
	                                </tr>
                                <%} %>
                          	<%} %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="../common/footer.jsp" %>

</body>
</html>