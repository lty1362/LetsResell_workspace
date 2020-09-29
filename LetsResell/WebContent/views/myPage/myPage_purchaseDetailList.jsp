<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Bid> list = (ArrayList<Bid>)request.getAttribute("list");
	Bid b = (Bid)request.getAttribute("b");
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
                                <span>0건</span>
                            </a>
                        </li>
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_delivery.png">
                            </div>
                            <a>
                               	 진행중인 구매 <br>
                                <span>0건</span>
                            </a>
                        </li>
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_present.png">
                            </div>
                            <a>
                                	구매완료 <br>
                                <span>0건</span>
                            </a>
                        </li>
                        <li>
                            <div>
                                <img src="https://outofstock.co.kr/assets/images/mypage/ic_tender_paycard.png">
                            </div>
                            <a>
                                	구매총액 <br>
                                <span>0원</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="sales_tabs">
                            <li class="1">
                                <a style="color:orange;">
                                    	입찰현황 <br>
                                    <span>(0)</span>
                                </a>
                            </li>
                            <li class="2">
                                <a>
                                   	 구매진행 <br>
                                    <span>(0)</span>
                                </a>
                            </li>
                            <li class="3">
                                <a>
                                   	 구매완료 <br>
                                    <span>(0)</span>
                                </a>
                            </li>
                    </ul>
                    
                    <script>
                    
	                    $(function(){
	                    	
	                    	$(".1").click(function(){
	                    		
	                    		$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseDetail.mp"
	                    		
	                    	});
	                    	
							$(".2").click(function(){
	                    		
								$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseStatus.mp"
	                    		
	                    	});
							
							$(".3").click(function(){
	                    		
	                    		$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseCom.mp"
	                    		
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
                                    <th>등록정보</th>
                                    <th>관리</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<% if(list.isEmpty()) {%>
                            	
	                                <tr>
	                                    <td colspan="2">
	                                       	등록된 리스트가 없습니다.
	                                    </td>
	                                </tr>
                                
                                <%}else { %>
                                	
                                	<tr>
                                    <td width="50"><%= b.getBidNo() %></td>
                                    <td width="200">
                                        <div class="product_img">
                                            <a href=""><%= b.getPrImage() %></a>
                                        </div>
                                    </td>
                                    <td class="product_info">
                                        <dl>
                                            <dt>
                                                <%= b.getSaleName() %>
                                            </dt>
                                            <dd>
                                                	<%= b.getSaleSize() %> / <%= b.getSaleCategory() %> <br><br>
                                                <span><%= b.getBidPrice() %></span>
                                            </dd>
                                        </dl>
                                    </td>
                                    <td>
                                        <span><%= b.getBidStatus() %></span> <br>
                                        <div class="container">
                                            <!-- Button to Open the Modal -->
                                            <button type="button" id="btn" data-toggle="modal" data-target="#enrollModal">
                                              	입찰갱신
                                            </button>
                                          
                                            <!-- The Modal -->
                                            <div class="modal" id="enrollModal">
                                              <div class="modal-dialog">
                                                <div class="modal-content">
                                                
                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h5 class="modal-title">입찰갱신</h5>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>
                                                  
                                                  <!-- Modal body -->
                                                  <div class="modal-body" style="text-align: center;">
                                                   
                                                    <span style="margin-right: 10px;">입찰갱신가격</span>
                                                    <input type="text">
                                                    <br>
                                                    <span style="color: red;">
                                                        * 현재입찰가격 : -- <br>
                                                        * 현재최고입찰가격 : --
                                                    </span>
            
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
                                        <div class="container">
                                            <!-- Button to Open the Modal -->
                                            <button type="button" id="btn" data-toggle="modal" data-target="#deleteModal">
                                             	 입찰취소
                                            </button>
                                          
                                            <!-- The Modal -->
                                            <div class="modal fade" id="deleteModal">
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