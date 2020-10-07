<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Sale> list = (ArrayList<Sale>)request.getAttribute("list");
	ArrayList<Sale> slist = (ArrayList<Sale>)request.getAttribute("slist");
	ArrayList<Sale> sclist = (ArrayList<Sale>)request.getAttribute("sclist");
	ArrayList<Address> alist = (ArrayList<Address>)request.getAttribute("alist");
	Trade t = (Trade)session.getAttribute("t");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../resources/css/myPage/myPage_salesStatusList.css"%>
</head>
<body>   

	<%@ include file="../common/header.jsp" %>

	<div class="content"> <!--바디 전체적으로 감싸는 div-->
        <div class="mypage">    <!--마이페이지 전체적으로 감싸는 div-->
        
        <%@ include file="../myPage/sideMenubar.jsp" %>
            
            <div class="mypage_body">
                <p class="sales_title">판매내역</p>
                <div class="sales_details">
                    <ul class="sales_header">
                        
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_delivery.png">
                            </div>
                            <a>
                               	 판매수량 <br>
                                <span>
                                	
                                	<%if(list.isEmpty()) {%>
                                	
                                		0
                                	
                                	<%}else { %>
                                	
                                		<%int result = 0; %>
                                	
                                		<%for(int i = 0; i < list.size(); i++){ %>
                                		
                                			<%result = i+1; %>
                                		
                                		<%} %>
                                		
                                		<%=result %>
                                	
                                	<%} %>건
                                
                                </span>
                            </a>
                        </li>
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_present.png">
                            </div>
                            <a>
                               	 판매금액 <br>
                                <span>
                                <%if(sclist.isEmpty()) {%>
                                	0원
                                <%}else { %>
	                                <%for(int i = 0; i < sclist.size(); i++) {%>
	                                	<%=sclist.get(i).getTradePrice() %>원
                                	<%} %>
                                <%} %>
                                </span>
                            </a>
                        </li>
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_paycard.png">
                            </div>
                            <a>
                               	 정산금액 <br>
                                <span>0원</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="sales_tabs">
                            <li class="1">
                                <a> 
                                    	등록현황 <br>
                                    <span>
                                    	
                                    	(<%if(list.isEmpty()) {%>
                                	
                                		0
                                	
                                	<%}else { %>
                                	
                                		<%int result = 0; %>
                                	
                                		<%for(int i = 0; i < list.size(); i++){ %>
                                		
                                			<%result = i+1; %>
                                		
                                		<%} %>
                                		
                                		<%=result %>
                                	
                                	<%} %>)
                                    
                                    </span>
                                </a>
                            </li>
                            <li class="2">
                                <a style="color:orange;">
                                  	  판매진행 <br>
                                    <span>
                                    
                                    	(<%if(slist.isEmpty()) {%>
                                	
                                		0
                                	
                                	<%}else { %>
                                	
                                		<%int result = 0; %>
                                	
                                		<%for(int i = 0; i < slist.size(); i++){ %>
                                		
                                			<%result = i+1; %>
                                		
                                		<%} %>
                                		
                                		<%=result %>
                                	
                                	<%} %>)
                                    
                                    </span>
                                </a>
                            </li>
                            <li class="3">
                                <a>
                                    	판매완료 <br>
                                    <span>
                                    
                                    	(
                                    		<%if(sclist.isEmpty()) {%>
                                	
                                		0
                                	
                                	<%}else { %>
                                	
                                		<%int result = 0; %>
                                	
                                		<%for(int i = 0; i < sclist.size(); i++){ %>
                                		
                                			<%result = i+1; %>
                                		
                                		<%} %>
                                		
                                		<%=result %>
                                	
                                	<%} %>
                                    	)
                                    
                                    </span>
                                </a>
                            </li>
                    </ul>
                    
                  	<script>
					$(function(){
                    	
                    	$(".1").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesDetail.mp?userNo=<%=login.getUserNo()%>"
                    		
                    	});
                    	
						$(".2").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesStatus.mp?userNo=<%=login.getUserNo()%>"
                    		
                    	});
						
						$(".3").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesCom.mp?userNo=<%=login.getUserNo()%>"
                    		
                    	});
            	   		
            	   	});
                  	</script>
                    <div class="myrow" style="margin-top: 20px;">
                        <div class="select_list">
                            <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown">
                                	전체입찰
                              </button>
                              <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">전체입찰</a>
                                <a class="dropdown-item" href="#">갱신된 입찰</a>
                                <a class="dropdown-item" href="#">기간 만료 임박 입찰</a>
                        </div>
                    </div>
                    <div class="sales_list" style="margin-top: 20px;">
                        <table class="sales_table">
                            <thead>
                                <tr>
                                    <th colspan="3">등록정보</th>
                                    <th width="200">관리</th>
                                </tr>
                            </thead>
                            <tbody>
                            	
                            	<%if(slist.isEmpty()) { %>
                                <tr>
                                    <td colspan="4">
                                        	거래중인 제품이 없습니다.
                                    </td>
                                </tr>
                                <%}else { %>
                                	
                                	<%for(int i = 0; i < slist.size(); i++){ %>
		                                <tr>
		                                    <td width="50"><%=i+1 %></td>
		                                    <td width="200">
		                                        <div class="product_img">
		                                            <a href=""><img src="<%=slist.get(i).getTitleImg()%>"></a>
		                                        </div>
		                                    </td>
		                                    <td class="product_info">
		                                        <dl>
		                                            <dt>
		                                                <%=slist.get(i).getSaleName() %>
		                                            </dt>
		                                            <dd>
		                                                	<%=slist.get(i).getSaleCondition() %>/<%=slist.get(i).getSaleCategory() %>/<%=slist.get(i).getSaleSize() %><br><br>
		                                                <span><%=slist.get(i).getTradePrice() %></span>
		
		                                            </dd>
		                                        </dl>
		                                    </td>
		                                    <td>
		                                        <span><%=slist.get(i).getTradeStatus() %></span> <br>
		                                        <div class="container">
		                                            <!-- Button to Open the Modal -->
		                                            <button type="button" id="btn" data-toggle="modal" data-target="#deliveryModal<%=i%>">
		                                              	배송지 / 운송장
		                                            </button>
		                                          
		                                            <!-- The Modal -->
		                                            <div class="modal" id="deliveryModal<%=i%>">
		                                              <div class="modal-dialog">
		                                                <div class="modal-content">
		                                                
		                                                  <!-- Modal Header -->
		                                                  <div class="modal-header">
		                                                    <h5 class="modal-title">배송지 / 운송장</h5>
		                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
		                                                  </div>
		                                                  
		                                                  <!-- Modal body -->
		                                                  <div class="modal-body" style="text-align: center;">
		                                                   
		                                                    	<!--구매자배송지-->
		                                                    <span style="margin: 10px; font-weight: bold; color: green;"></span>
															
		                                                    
		                                                    <form action="<%=contextPath %>/updateDelivery.mp" method="get" id="update">
			                                                    
			                                                    <input type="hidden" name="tno" id="tno" value="<%=slist.get(i).getTradeNo()%>">
			                                                    <input type="hidden" name="userNo" value="<%=loginUser.getUserNo() %>" >
			                                                   	 택배사
			                                                    <input type="text" name="deliveryName" value="<%=slist.get(i).getTradeService()%>">
			
			                                                    <br><br>
			
			                                                   	 운송장번호
			                                                    <input type="number" name="deliveryNo" value="<%=slist.get(i).getTradeNum() %>">
			                                                    
			                                                    <hr>
			                                                    
			                                                    <button type="submit" class="btn btn-primary" id="update">확인</button>
			                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		                                                    
		                                                    </form>
		
		                                                  </div>
		                                                  
		                                                </div>
		                                              </div>
		                                            </div>
		                                            
		                                        </div>
		
		                                        <div class="container">
		                                            <!-- Button to Open the Modal -->
		                                            <button type="button" id="btn" data-toggle="modal" data-target="#myModal<%=i%>">
		                                              	판매취소
		                                            </button>
		                                          
		                                            <!-- The Modal -->
		                                            <div class="modal fade" id="myModal<%=i%>">
		                                              <div class="modal-dialog modal-sm">
		                                                <div class="modal-content">
		                                                
		                                                  <!-- Modal Header -->
		                                                  <div class="modal-header">
		                                                    <h6 class="modal-title">판매취소</h6>
		                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
		                                                  </div>
		                                                  
		                                                  <!-- Modal body -->
		                                                  <div class="modal-body">
		                                                    <strong>판매를 취소하시겠습니까?</strong>
		                                                    
		                                                    <hr>
		                                                    
		                                                    <button type="button" onclick="location.href='<%=contextPath %>/deleteTrade.mp?tno=<%=slist.get(i).getTradeNo()%>&sno=<%=slist.get(i).getSaleNo()%>&userNo=<%=loginUser.getUserNo()%>';" class="btn btn-danger" data-dismiss="modal">예</button>
		                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
		                                                    
		                                                  </div>
		                                                  
		                                                </div>
		                                              </div>
		                                            </div>
		                                            
		                                        </div>
		                                    </td>
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
    </div>
    
    <%@ include file="../common/footer.jsp" %>

</body>

</html>