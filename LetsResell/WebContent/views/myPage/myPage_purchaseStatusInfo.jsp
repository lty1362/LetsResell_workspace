<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
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

        .bid_list span{
            color: red;
            font-size: 15px;
        }

        /*입찰날짜*/

        .bid_date {
            overflow: hidden;
            border: 5px solid rgb(194, 193, 193);
            padding: 10px;
        }

        .bid_date ul{
            list-style: none;
            width: 100%;
            margin-bottom: 0;
        }

        .bid_date ul li{
            float: left;
            margin-left: 10px;
            margin-right: 10px;
        }

        /*입찰진행 바디*/
        .bid_body{
            width: 920px;
            margin-left: 280px;
            box-sizing: border-box;
        }

        .bid_title {
            font-size: 20px;
            font-weight: 600;
            color: #333333;
            margin-top: 0px;
            margin-bottom: 30px;
        }

        /*상품 정보 테이블*/
        .bid_list table{
            width: 100%;
            text-align: center;
            border-bottom: 1px solid #333;
        }

        .bid_list table thead th{
            color: #333;
            height: 40px;
            border-top: 1px solid #333;
            border-bottom: 1px solid #333;
        }

        .bid_list table tbody td{
            height: 150px;
        }

        .bid_list table tbody td dl{
            text-align: left;
            font-size: 13px;
            margin: 0px;
        }

        .bid_list table #btn{
            font-size: 12px; 
            padding: 4px;
            margin: 5px;
            background-color: #333;
            border: 1px solid #333;
            border-radius: 5px;
            color: white;
        }

        .product_info dd{
            margin: 0px;
        }

        .product_info span{
            color: black;
            font-size: 18px;
            font-weight: bold;
        }

        /*결제정보*/
        .payment{
            margin-top: 50px;
        }

        .payment p {
            font-size: 20px;
            font-weight: bold;
        }

        .payment table{
            width: 100%;
            border-top: 1px solid #333;
            border-bottom: 1px solid #333;
        }

        .payment table td{
            padding: 10px;
            padding-right: 30px;
            padding-left: 30px;
        }

        /*배송지정보*/
        .deliveryInfo{
            margin-top: 50px;
        }

        .deliveryInfo table{
            width: 100%;
            height: 130px;
            border-top: 1px solid #333;
            border-bottom: 1px solid #333;
        }

        .deliveryInfo table th{
            text-align: center;
            width: 200px;
        }

        .deliveryInfo table td{
            padding-left: 20px;
        }

        .deliveryInfo p{
            font-size: 20px;
            font-weight: bold;
        }

        .deliveryInfo #btn{
            font-size: 12px;
            font-weight: bold; 
            padding: 4px;
            margin: 5px;
            background-color: lightgray;
            border: 1px solid lightgray;
            border-radius: 5px;
            color: #333;
        }

    </style>
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
                            <li style="font-weight: bold; color: green;"><%=list.get(0).getTradeService() %>/<%=list.get(0).getTradeNum() %></li>
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
                                                    <span style="margin: 10px; font-weight: bold; color: green;">010-5236-4852</span>

                                                    <br><br>
                                                    
                                                    	택배사
                                                    <span style="margin: 10px; font-weight: bold; color: green;">로젠</span>

                                                    <br><br>

                                                    	운송장번호
                                                    <span style="margin: 10px; font-weight: bold; color: green;">152365-52-64589</span>

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
                                <td>배송비</td>
                                <td>3,000</td>
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

                        <table>
                            <tr>
                                <th>수령인</th>
                                <td>홍길동</td>
                                <td rowspan="3" width="300px">
                                    
                                    	주문자 정보 
                                    <button id="btn">회원정보변경</button> <br>
                                    	홍길동 <br>
                                    010-3256-1533 <br>
                                    email@gmail.com

                                </td>
                            </tr>

                            <tr>
                                <th>연락처</th>
                                <td>010-3256-1533</td>
                            </tr>

                            <tr>
                                <th>배송지</th>
                                <td>00시 00구 00동</td>
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