<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매Mainpage</title>

    <style>
        .pro-container{width: 1200px; margin: 0 auto;}
        .pro-header{height: 500px; overflow: hidden; margin-top: 10px;}
        .pro-info{height:360px; overflow: hidden; margin-top: 30px;}
        .pro-sell{height:300px; overflow: hidden; margin-top: 30px;}

		.h-container {
		    width: 1200px;
		    margin-left: auto;
		    margin-right: auto;
		    margin-bottom: 30px;
		}
		.pro-container .f-container {	
		    margin-top: 30px;
			float: auto;
		}
        .pro-h-image{
            height: 500px;
            background-color: pink;
            width:50%;
            float: left;

        }
        .pro-h-detail{
            height: 500px;
            width:49%;
            float: right;
        }
        .pro-i-info{
            height: 360px;
            background-color: pink;
            width:50%;
            float: left;

        }
        .pro-i-you{
            height: 360px;
            width:49%;
            float: right;
        }
        .pro-s-info{
            margin-top:15px;
            height: 300px;
            width:50%;
            float: left;

        }
        .pro-s-quote{
            height: 300px;
            background-color: wheat;
            width:49%;
            float: right;
        }
        /*제품정보 detail*/
        .pro-header .pro-h-name{
            font-weight: bolder;
            font-size: 30px;
            color: #333333;
            line-height: 1.3;
        }
        .pro-header .pro-h-name-en{
            font-family: "NotoSansCJKkr-Light";
            font-size: 18px;
            color: #333;
            margin-top: 13px;
            display: block;
        }
        .pro-h-flex{
            margin-top: 20px; 
            margin-bottom: 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .pro-header .badge-new{
            background-color: #ff4b00;
            line-height: 20px;
            padding: 0 12px;
            border-radius: 10px;
            color: white;
            display: inline-block;
            font-size: 12px;
            margin-left: 8px;
        }
        .pro-h-grid{
            display: grid;
            grid-gap: 30px;
            grid-template-columns: repeat(2, 1fr);  
        }
      
       .buy-box{
            background-color: #ff4c01;
            color: white;
            border-radius: 10px;
            font-family: 'NotoSansCJKkr-Regular';
            font-size: 26px;
            text-align: center;
        }
        .buy-box-menu{
            background-color: #003cfffa;
            color: white;
            border-radius: 10px;
            font-size: 26px;
            text-align: center; 
            padding: 12px;  
        }
        .pro-h-detail .buy-box span {
            display: block;
            font-size: 14px;
            font-family: 'NotoSansCJKkr-Light';
        }
        .btn-tender-info {
            display: block;
            text-align: center;
            font-size: 16px;
            line-height: 40px;
        }

        /*제품정보 detail END*/

         /*제품정보*/

         /*제품정보 END*/

       /*유튜브*/
        iframe {
            margin-top:15px;
            width: 600px;
            height: 290px;
            border-width: 2px;
            border-style: inset;
            border-color: initial;
            border-image: initial;  
        }
        /*유튜브 END*/

        /*title*/
        .pro-container span.title{
            width: 150px;
            background-color: white;
            border-radius: 5px;
            border: 1px solid #ff4c01;
            color: #ff4a01;
            display: inline-block;
            font-size: 18px;
            text-align: center;
            line-height: 50px; 
        }
        /*title END*/

        /*판매내역 table  */
        .pro-s-info table{
            margin-top:15px;
            width: 100%;
            border-spacing: 0;
            border-collapse: collapse;
        }
        .pro-s-info table > thead > tr{
            height: 30px;
            border-bottom: 2px solid #ea5916;
        }
        .pro-s-info table thead th{
            font-family: "NotoSansCJKkr-Medium";
            font-size: 16px;
            color: #333;
            text-align: center;
        }
        .pro-s-info table tbody{
            display: table-row-group;
            vertical-align: middle;
            border-color: inherit;
        }
        .pro-s-info table > tbody > tr:nth-child(odd){
            background-color: #f9f9f9;
        }
        .pro-s-info table tbody td{
            font-family: "NotoSansCJKkr-Light";
            font-size: 16px;
            color: #333;
            text-align: center;
        }
         /*판매내역 table END*/

    </style>
</head>
<body>
	<header>
		<div class="h-container">
		<%@ include file= "../common/header.jsp"%>
		</div>
	</header>
    <section class="pro-body">
        <div class="pro-container">
            <div class="pro-header">
                <div class="pro-h-image"></div>
                <div class="pro-h-detail">
                    <div class="pro-h-name">이지부스트 350 V2 자이온</div>
                        <span class="pro-h-name-en">adidas Yeezy Boost 350 V2 Zyon</span>
                    <div class="pro-h-flex">
                        <a>상태: 새상품 / 정품
                            <span class="badge-new">new</span>
                        </a>
                    </div>  
                    <div class="pro-h-grid">
                       <div>
                           <div class="buy-box" onclick="">
                                입찰구매 <br><span align="center">BUY</span>
                           </div>
                           <a class="btn-tender-info" onclick="">판매 입찰현황 전체 보기</a>
                       </div>
                       <div>
                            <div class="buy-box" onclick="">
                                즉시구매 <br><span align="center">BUY</span>
                            </div>
                            <a class="btn-tender-info" onclick="">즉시 판매현황 전체 보기</a>
                      </div>
                    </div>      
                    <div>
                        <div class="buy-box-menu" onclick="">
                            다른상품 보러가기 <span>GoGo</span>
                        </div>
                     </div>
                </div>
            </div>
            <div class="pro-info">
                <div class="pro-i-info">
                    <span class="title">제품정보</span>
                   
                </div>
    
                <div class="pro-i-you">
                    <span class="title">제품리뷰</span>
                    <iframe src="https://www.youtube.com/embed/Nl199fznWzM" frameborder="0"></iframe>
                </div>
            </div>

            <div class="pro-sell">
                <div class="pro-s-info">
                    <span class="title">판매내역</span>
                    <table>
                        <thead>
                            <tr>
                                <th>사이즈</th>
                                <th>판매가격</th>
                                <th>날짜</th>
                                <th>시간</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="pro-s-quote">
                    <span class="title">시세차트</span>
                </div>
            </div>
            <footer>
				<div class="f-container">
					<%@ include file= "../common/footer.jsp"%>
				</div>
			</footer>   
        </div>
    </section>
</body>
</html>