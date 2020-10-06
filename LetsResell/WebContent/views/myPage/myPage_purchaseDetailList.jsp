<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Bid> blist = (ArrayList<Bid>)request.getAttribute("blist");
	ArrayList<Trade> tlist = (ArrayList<Trade>)request.getAttribute("tlist");
	ArrayList<Trade> list = (ArrayList<Trade>)request.getAttribute("list");
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
        .content{
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
        
        /*모달*/
        .container span{
            color: #333;
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

        ul.sales_tabs li a{
            color: black;
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

        .product_info dl{
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
                                    
                                    <%} %>
                                    	건
                                
                                
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
                                <a style="color:orange;">
                                    	입찰현황 <br>
                                    <span>(
                                    
                                    <%if(blist.isEmpty()) {%>
                                    
                                    	0
                                    
                                    <%}else { %>
                                    
                                    	<%int result = 0; %>
                                    
                                    	<%for(int i = 0; i < blist.size(); i++) {%>
                                    		<% result = i+1; %>
                                    	<%} %>
                                    	
                                    	<%=result %>
                                    
                                    <%} %>
                                    
                                    )</span>
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
                                <a>
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
	                    		location.href="<%= contextPath %>/purchaseDetail.mp?userNo=<%=login.getUserNo()%>"
	                    		
	                    	});
	                    	
							$(".2").click(function(){
	                    		
								$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseStatus.mp?userNo=<%=login.getUserNo()%>"
	                    		
	                    	});
							
							$(".3").click(function(){
	                    		
	                    		$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseCom.mp?userNo=<%=login.getUserNo()%>"
	                    		
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
                            	
                            	<%if(blist.isEmpty()) {%>
	                                <tr>
	                                    <td colspan="4">
	                                       	등록된 리스트가 없습니다.
	                                    </td>
	                                </tr>
                                <%}else{ %>
                                	<%for(int i = 0 ; i < blist.size() ; i++) { %>
                                	<tr>
	                                	<td width="50"><%=i+1 %></td>
	                                    <td width="200">
	                                        <div class="product_img">
	                                            <a href=""><img src="<%=blist.get(i).getTitleImg()%>"></a>
	                                        </div>
	                                    </td>
	                                    <td class="product_info">
	                                        <dl>
	                                            <dt>
	                                                <%=blist.get(i).getSaleName() %>
	                                            </dt>
	                                            <dd>
	                                                	<%=blist.get(i).getSaleCategory()%>/<%=blist.get(i).getSaleSize()%> <br><br>
	                                                <span><%=blist.get(i).getBidPrice()%></span>
	                                            </dd>
	                                        </dl>
	                                    </td>
	                                    <td>
                                        <span><%=blist.get(i).getBidStatus() %></span> <br>
                                        <div class="container">
                                            <!-- Button to Open the Modal -->
	                                            <button type="button" id="btn" data-toggle="modal" data-target="#enrollModal<%=i%>">
	                                             	 입찰갱신
	                                            </button>
                                          
                                            <!-- The Modal -->
                                            <div class="modal" id="enrollModal<%=i%>">
                                              <div class="modal-dialog">
                                                <div class="modal-content">
                                                
                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h5 class="modal-title">입찰갱신</h5>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>
                                                  
                                                  <!-- Modal body -->
                                                  <div class="modal-body" style="text-align: center;">
                                                   <form action="<%= contextPath %>/enrollPrice.mp" method="get" id="enroll">
                                                   <input type="hidden" name="bidNo" id="bidNo" value="<%=blist.get(i).getBidNo()%>">
	                                                    <span style="margin-right: 10px;">입찰갱신가격</span>
	                                                    <input type="number" name="enrollPrice" id="enrollPrice" value="<%=blist.get(i).getBidPrice()%>">
	                                                    <br>
	                                                    <span style="color: red;">
	                                                        * 현재입찰가격 : <%=blist.get(i).getBidPrice()%> <br>
	                                                        * 현재최고입찰가격 : 
	                                                    </span>
	                                                    
	                                                    <hr>
	                                                    
	                                                    <button type="submit" class="btn btn-primary" id="enroll">확인</button>
	                                                    <button type="reset" class="btn btn-secondary" data-dismiss="modal">취소</button>
            									   </form>
                                                  </div>
                                                  
                                                </div>
                                              </div>
                                            </div>
                                             
                                          </div>
                                        <div class="container">
                                            <!-- Button to Open the Modal -->
                                            <button type="button" id="btn" data-toggle="modal" data-target="#deleteModal<%=i%>">
                                              	입찰취소
                                            </button>
                                          
                                            <!-- The Modal -->
                                            <div class="modal fade" id="deleteModal<%=i%>">
                                              <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                
                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h6 class="modal-title">입찰취소</h6>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>
                                                  
                                                  <!-- Modal body -->
                                                  <div class="modal-body">
                                                  <form>
                                                    <strong>입찰을 취소하시겠습니까?</strong>
                                                    
                                                    <hr>
                                                    
                                                    <button type="button" onclick="location.href='<%=contextPath %>/deleteDetail.mp?bno=<%=blist.get(i).getBidNo() %>&userNo=<%=loginUser.getUserNo() %>';" class="btn btn-danger" data-dismiss="modal">예</button>
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
                                                  </form>   
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