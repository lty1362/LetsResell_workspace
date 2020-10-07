<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Sale> list = (ArrayList<Sale>)request.getAttribute("list");
	ArrayList<Sale> slist = (ArrayList<Sale>)request.getAttribute("slist");
	ArrayList<Sale> sclist = (ArrayList<Sale>)request.getAttribute("sclist");
	ArrayList<Address> alist = (ArrayList<Address>)request.getAttribute("alist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../resources/css/myPage/myPage_salesDetailList.css"%>
</head>
<body>   

	<%@ include file="../common/header.jsp" %>

	<div class="outer"> <!-- 내역 && 사이드 메뉴-->
        <div class="mypage">    <!--내역div-->
            
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
                                	
                                	<%} %>
                                	건
                                
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
                                <a style="color:orange;"> 
                                    	등록현황 <br>
                                    <span>(
                                    	<%if(list.isEmpty()) {%>
                                	
                                		0
                                	
                                	<%}else { %>
                                	
                                		<%int result = 0; %>
                                	
                                		<%for(int i = 0; i < list.size(); i++){ %>
                                		
                                			<%result = i+1; %>
                                		
                                		<%} %>
                                		
                                		<%=result %>
                                	
                                	<%} %>
                                    )</span>
                                </a>
                            </li>
                            <li class="2">
                                <a>
                                  	  판매진행 <br>
                                    <span>
                                    
                                    	(
                                    		<%if(slist.isEmpty()) {%>
                                	
                                		0
                                	
                                	<%}else { %>
                                	
                                		<%int result = 0; %>
                                	
                                		<%for(int i = 0; i < slist.size(); i++){ %>
                                		
                                			<%result = i+1; %>
                                		
                                		<%} %>
                                		
                                		<%=result %>
                                	
                                	<%} %>
                                    	)
                                    
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
                    		location.href="<%= contextPath %>/salesDetail.mp?userNo=<%=login.getUserNo()%>";
                    		
                    	});
                    	
						$(".2").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesStatus.mp?userNo=<%=login.getUserNo()%>";
                    		
                    	});
						
						$(".3").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesCom.mp?userNo=<%=login.getUserNo()%>";
                    		
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
                                    <th width="200px">관리</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<%if(list.isEmpty()) {%>
                                <tr>
                                    <td colspan="4">
                                       	 등록된 입찰정보가 없습니다.
                                    </td>
                                </tr>
                                <%}else { %>
                                
                                	<%for(int i = 0; i < list.size(); i++){ %>
                                	
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
                                               	 <%=list.get(i).getSaleCondition() %>/<%=list.get(i).getSaleCategory() %>/<%=list.get(i).getSaleSize() %> <br><br>
                                                                                                             판매가격 : <%=list.get(i).getSalePrice() %>
                                            </dd>
                                        </dl>
                                    </td>
                                    <td>
                                        <span><%=list.get(i).getSaleStatus() %></span> <br>
                                        <button id="btn" name="sno" onclick="location.href='<%= contextPath %>/detailInfo.mp?sno=<%=list.get(i).getSaleNo()%>';">입찰진행</button> <br>
                                        <div class="container">
                                            <!-- Button to Open the Modal -->
                                            <button type="button" id="btn" data-toggle="modal" data-target="#myModal<%=i%>">
                                             	 입찰취소
                                            </button>
                                          
                                            <!-- The Modal -->
                                            <div class="modal fade" id="myModal<%=i%>">
                                              <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                
                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h6 class="modal-title">입찰취소</h6>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>
                                                  
                                                  <!-- Modal body -->
                                                  <div class="modal-body">
                                                    <strong>입찰을 취소하시겠습니까?</strong>
                                                    
                                                    <hr>
                                                    
                                                    <button type="button" onclick="location.href='<%=contextPath %>/deleteList.mp?sno=<%=list.get(i).getSaleNo()%>&userNo=<%=loginUser.getUserNo()%>';" class="btn btn-danger" data-dismiss="modal">예</button>
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