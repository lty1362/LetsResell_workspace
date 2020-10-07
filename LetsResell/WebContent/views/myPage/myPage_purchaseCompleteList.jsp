<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Bid> blist = (ArrayList<Bid>)request.getAttribute("blist");
	ArrayList<Trade> tlist = (ArrayList<Trade>)request.getAttribute("tlist");
	ArrayList<Trade> list = (ArrayList<Trade>)request.getAttribute("list");
	Bid b = (Bid)request.getAttribute("b");
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
                <p class="sales_title">구매내역</p>
                <div class="sales_details">
                    <ul class="sales_header">
                        
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_cart.png">
                            </div>
                            <a>
                                	구매입찰현황 <br>
                                <span>
                                
                                	<%if(blist.isEmpty()) {%>
                                    
                                    	0
                                    
                                    <%}else { %>
                                    	
                                    	<% int result = 0; %>
                                    
                                    	<%for(int i = 0; i < blist.size(); i++) {%>
                                    	
                                    		<%result = i+1; %>
                                    		
                                    	<%} %>
                                    	
                                    	<%= result %>
                                    
                                    <%} %>건
                                
                                </span>
                            </a>
                        </li>
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_delivery.png">
                            </div>
                            <a>
                                	진행중인 구매 <br>
                                <span>
                                
                                	<%if(tlist.isEmpty()) {%>
                                    
                                    	0
                                    
                                    <%}else { %>
                                    	
                                    	<% int result = 0; %>
                                    
                                    	<%for(int i = 0; i < tlist.size(); i++) {%>
                                    	
                                    		<%result = i+1; %>
                                    		
                                    	<%} %>
                                    	
                                    	<%= result %>
                                    
                                    <%} %>건
                                
                                </span>
                            </a>
                        </li>
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_present.png">
                            </div>
                            <a>
                                	구매완료 <br>
                                <span>
                                
                                	<%if(list.isEmpty()) {%>
                                    
                                    	0
                                    
                                    <%}else { %>
                                    	
                                    	<% int result = 0; %>
                                    
                                    	<%for(int i = 0; i < list.size(); i++) {%>
                                    	
                                    		<%result = i+1; %>
                                    		
                                    	<%} %>
                                    	
                                    	<%= result %>
                                    
                                    <%} %>건
                                
                                </span>
                            </a>
                        </li>
                    </ul>
                    <ul class="sales_tabs">
                            <li class="1">
                                <a>
                                    	입찰현황 <br>
                                    <span>
                                    
                                    	(
                                    		<%if(blist.isEmpty()) {%>
                                    
                                    	0
                                    
                                    <%}else { %>
                                    	
                                    	<% int result = 0; %>
                                    
                                    	<%for(int i = 0; i < blist.size(); i++) {%>
                                    	
                                    		<%result = i+1; %>
                                    		
                                    	<%} %>
                                    	
                                    	<%= result %>
                                    
                                    <%} %>
                                    	)
                                    
                                    </span>
                                </a>
                            </li>
                            <li class="2">
                                <a>
                                    	구매진행 <br>
                                    <span>
                                    	
                                    	(
                                    		<%if(tlist.isEmpty()) {%>
                                    
                                    	0
                                    
                                    <%}else { %>
                                    	
                                    	<% int result = 0; %>
                                    
                                    	<%for(int i = 0; i < tlist.size(); i++) {%>
                                    	
                                    		<%result = i+1; %>
                                    		
                                    	<%} %>
                                    	
                                    	<%= result %>
                                    
                                    <%} %>
                                    	)
                                    
                                    </span>
                                </a>
                            </li>
                            <li class="3">
                                <a style="color:orange;">
                                    	구매완료 <br>
                                    <span>
                                    
                                    	(
                                    		<%if(list.isEmpty()) {%>
                                    
                                    	0
                                    
                                    <%}else { %>
                                    	
                                    	<% int result = 0; %>
                                    
                                    	<%for(int i = 0; i < list.size(); i++) {%>
                                    	
                                    		<%result = i+1; %>
                                    		
                                    	<%} %>
                                    	
                                    	<%= result %>
                                    
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
	                    		location.href="<%= contextPath %>/purchaseDetail.mp?userNo=<%=login.getUserNo()%>";
	                    		
	                    	});
	                    	
							$(".2").click(function(){
	                    		
								$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseStatus.mp?userNo=<%=login.getUserNo()%>";
	                    		
	                    	});
							
							$(".3").click(function(){
	                    		
	                    		$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseCom.mp?userNo=<%=login.getUserNo()%>";
	                    		
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
                            
                            <%if(list.isEmpty()) {%>
                                <tr>
                                    <td colspan="4">
                                        	완료된 구매가 없습니다.
                                    </td>
                                </tr>
                            <%}else { %>
                            	<%for(int i = 0 ; i < list.size() ; i++) { %>
	                            	<tr>
	                                    <td width="50"><%=i+1 %></td>
	                                    <td width="200">
	                                        <div class="product_img">
	                                            <a href=""><img src="<%=list.get(i).getTitleImg()%>"></a>
	                                        </div>
	                                    </td>
	                                    <td class="product_info">
	                                        <dl>
	                                            <dt>
	                                                <%=list.get(i).getSaleName() %>
	                                            </dt>
	                                            <dd>
	                                               	<%=list.get(i).getSaleCondition()%>/<%=list.get(i).getSaleCategory()%>/<%=list.get(i).getSaleSize()%> <br><br>
	                                                <span><%=list.get(i).getTradePrice() %></span>
	                                            </dd>
	                                        </dl>
	                                    </td>
	                                    <td>
	                                        <span><%=list.get(i).getTradeStatus()%></span>
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