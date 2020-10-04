<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Sale> list = (ArrayList<Sale>)request.getAttribute("list");
	ArrayList<Sale> slist = (ArrayList<Sale>)request.getAttribute("slist");
	Trade t = (Trade)session.getAttribute("t");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        div{
            box-sizing: border-box;
        }
        .outer{
            width: 1200px;
            height: 1000px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 80px;
        }
        
        #btn{
            font-size: 12px;
            padding: 4px;
            margin: 4px;
            background-color: #333;
            border: 1px solid #333;
            border-radius: 5px;
            color: white;
        }

        .sales_list span{
            color: red;
            font-size: 15px;
        }

        /*판매내역 바디*/

        .mypage_body{
            width: 920px;
            margin-left: 280px;
            box-sizing: border-box;
        }

        .sales_title {
            font-size: 20px;
            font-weight: 600;
            color: #333333;
            margin-top: 0px;
            margin-bottom: 30px;
        }

        /*header*/
        
        ul.sales_header {
            background-color: #F7F7F7;
            margin: 0;
            padding: 20px 0;
            list-style: none;
            display: flex;
        }

        ul.sales_header li {
            flex: 1;
            height: 100px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-left: 25px;
            padding-right: 15px;
            border-right: 1px solid #e6e6e6;
        }

        ul.sales_header li div {
            width: 60px;
            height: 60px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        ul.sales_header li a {
            color: #333;
            font-size: 16px;
            text-align: right;
        }

        ul.sales_header li a span {
            display: block;
            line-height: 1.8;
            font-size: 20px;
            font-weight: 600;
        }

        /*tab*/
        ul.sales_tabs {
            display: flex;
            margin: 0;
            margin-top: 20px;
            padding: 0;
        }

        ul.sales_tabs li {
            flex: 1;
            border: 1px solid #dfdfdf;
            box-sizing: border-box;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 15px;
            cursor: pointer;
        }

        ul.sales_tabs li span {
            display: block;
            font-size: 14px;
            text-align: center;
            line-height: 1.5;
        }

        .sales_list table{
            width: 100%;
            text-align: center;
            border-bottom: 1px solid rgb(204, 204, 204);
        }

        .sales_list table thead th{
            background-color: #333;
            color: white;
            height: 40px;
        }

        .sales_list table tbody td{
            height: 100px;
        }
        
        /*상품 정보 테이블*/
        .sales_list table{
            width: 100%;
            text-align: center;
        }

        .sales_list table thead th{
            background-color: #333;
            color: white;
            height: 40px;
        }

        .sales_list table tbody td{
            height: 150px;
        }

        .sales_list table tbody tr{
            border-bottom: 1px solid rgb(204, 204, 204);
        }

        .sales_list table tbody td dl{
            text-align: left;
            font-size: 13px;
            margin: 0px;
        }

        .product_info dd{
            margin: 0px;
        }
                
</style>
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
                                <span>0원</span>
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
                                    <span>(0)</span>
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
                    		location.href="<%= contextPath %>/salesCom.mp"
                    		
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
                                    <td colspan="3">
                                        	진행중인 리스트가 없습니다.
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
		                                                   
		                                                    	구매자배송지
		                                                    <span style="margin: 10px; font-weight: bold; color: green;">00시 00구 00동</span>
		
		                                                    <br><br>
		                                                    
		                                                    <form action="updateDelivery.mp" method="post">
		                                                    <input type="hidden" name="tno" id="tno" value="<%=slist.get(i).getTradeNo()%>">
		                                                   	 택배사
		                                                    <input type="text" name="deliveryName" value="<%=slist.get(i).getTradeService()%>">
		
		                                                    <br><br>
		
		                                                   	 운송장번호
		                                                    <input type="number" name="deliveryNo" value="<%=slist.get(i).getTradeNum() %>">
		                                                    
		                                                    <hr>
		                                                    
		                                                    <button type="submit" class="btn btn-primary" data-dismiss="modal">확인</button>
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
		                                                  </div>
		                                                  
		                                                  <!-- Modal footer -->
		                                                  <div class="modal-footer">
		                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">예</button>
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