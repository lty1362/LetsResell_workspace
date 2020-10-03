<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.myPage.model.vo.*" %>
<%
	ArrayList<Bid> blist = (ArrayList<Bid>)request.getAttribute("list");
	ArrayList<Sale> slist = (ArrayList<Sale>)request.getAttribute("list");
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

        .bid_date #btn{
            margin-left: 250px;
            font-size: 12px;
            padding: 4px;
            background-color: #333;
            border: 1px solid #333;
            border-radius: 5px;
            color: white;
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

        .product_info dd{
            margin: 0px;
        }

        .product_info span{
            color: black;
            font-size: 18px;
            font-weight: bold;
        }


        /*구매입찰정보*/

        .purchase_info{
            margin-top: 50px;
        }

        .purchase_info p {
            font-size: 20px;
            font-weight: bold;
        }
        .purchase_info table{
            width: 100%;
            text-align: center;
            border-top: 1px solid #333;
            border-bottom: 1px solid #333;
        }

        .purchase_info thead th{
            padding: 5px;
            padding-bottom: 10px;
        }

        .purchase_info tbody td{
            padding: 5px;
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
                            <li style="font-weight: bold;">입찰날짜</li>
                            <li style="color: red;">2020.08.25</li>
                            <li style="font-weight: bold; margin-left: 50px;">입찰만료날짜</li>
                            <li style="color: red;">2020.09.10</li>
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
                                            <a href=""><img src="https://order.pay.naver.com/proxy/phinf/shop1/20200612_149/1591954976209zSrTl_JPEG/29316518844322888_411497941.jpg?type=m80" alt="2020최신 샤오미 미밴드5 블랙 중국내수용 글로벌버전 한글패치 가능"></a>
                                        </div>
                                    </td>
                                    <td class="product_info">
                                        <dl>
                                            <dt>
                                                2020최신 샤오미 미밴드5 블랙 중국내수용 글로벌버전 한글패치 가능
                                            </dt>
                                            <dd>
                                                	샤오미 미밴드5(중국내수용/글로벌버전): 중국내수용 / 단품(블랙) / 1+1 (블랙+블랙): 단품(블랙) <br>
                                                	사이즈 : L / 색상 : 블랙
                                            </dd>
                                        </dl>
                                    </td>
                                    <td style="background-color: rgb(194, 193, 193);">
                                        <span>입찰진행중</span>
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
                                    <th>시간</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>user01</td>
                                    <td>880,000</td>
                                    <td>2020-08-25</td>
                                    <td>13:50</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>user01</td>
                                    <td>880,000</td>
                                    <td>2020-08-25</td>
                                    <td>13:50</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>user01</td>
                                    <td>880,000</td>
                                    <td>2020-08-25</td>
                                    <td>13:50</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>user01</td>
                                    <td>880,000</td>
                                    <td>2020-08-25</td>
                                    <td>13:50</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>user01</td>
                                    <td>880,000</td>
                                    <td>2020-08-25</td>
                                    <td>13:50</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>user01</td>
                                    <td>880,000</td>
                                    <td>2020-08-25</td>
                                    <td>13:50</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>user01</td>
                                    <td>880,000</td>
                                    <td>2020-08-25</td>
                                    <td>13:50</td>
                                </tr>
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