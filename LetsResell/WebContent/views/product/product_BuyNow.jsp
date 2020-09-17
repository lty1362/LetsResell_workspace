<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        .buy-container{width: 1200px; margin: 0 auto;}
        .buy-info{height:500px;}

		.h-container {
		    width: 1200px;
		    margin-left: auto;
		    margin-right: auto;
		}
		.buy-h-detail .f-container {	
		    margin-top: 50px;
			float: right;
		}
        .buy-h-image{
            height: 500px;
            background-color: black;
            width:50%;
            float: left;

        }
        .buy-h-detail{
            margin-top: 30px;
            height: 500px;
            width:49%;
            float: right;
        }
        .buy-header {
            padding: 40px 0;
            border-bottom: 1px solid #efefef;
            margin-bottom: 20px;
        }
        .buy-title {
            font-family: 'NotoSansCJKkr-Regular';
            font-size: 40px;
        }
        .buy-title span {
            font-size: 24px;
            color: #fe4c02;
        }
        .buy-text {
            font-size: 16px;
        }
        .pdt-name {
            font-family: 'NotoSansCJKkr-Medium';
            font-size: 30px;
            line-height: 1.2;
        }
        .pdt-name-en {
            font-family: "NotoSansCJKkr-Light";
            font-size: 19px;
            margin-top: 6px;
        }
        .buy-agree-box {
            padding: 0 24px;
            border: 1px solid #efefef;
            margin-top: 30px;
            margin-bottom: 40px;
        }
        .checkbox-custom input[type="checkbox"] + i {
            
            display: inline-block;
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }
        .buy-grid {
            display: grid;
            grid-gap: 10px;
            grid-template-columns: repeat(2, 1fr);
        }
        .btn-buy-continue {
            border-radius: 3px;
            background-color: #b0b0b0;
            font-family: 'NotoSansCJKkr-Regular';
            font-size: 18px;
            color: white;
            line-height: 60px;
            text-align: center;
            pointer-events: none;
        }
        .btn-buy-cancel {
            border-radius: 3px;
            background-color: white;
            border: 1px solid #b0b0b0;
            font-family: 'NotoSansCJKkr-Regular';
            font-size: 18px;
            color: #b0b0b0;
            line-height: 60px;
            text-align: center;
        }
        .pdt-title {
            margin-top: 30px;
            margin-bottom: 30px;
            width: 235px;
            background-color: #ff4c01;;
            border-radius: 20px;
            border: 1px solid #ff4c01;
            color: white;
            display: inline-block;
            font-size: 25px;
            text-align: center;
            line-height: 70px; 
        }
         /*구매희망가입력*/
         .pdt-buy-price {
            position: relative;
            text-align: right;
        }
        .buy-price {
            border: 1px solid #333;
            border-radius: 5px;
            height: 68px;
            font-family: 'NotoSansCJKkr-Regular';
            font-size: 26px;
            outline: none;
            width: 89%;
            padding: 0 25px;
            text-align: right;
        }    
        .pdt-buy-price label {
            color: #a1a1a1;
            font-size: 16px;
            letter-spacing: 0.5px;
            margin: 8px 0;
            display: inline-block;
            padding-left: 25px;
            background-size: 16px 16px;
        }   
        /*구매희망가입력 END*/ 
        
         /*최종 금액 안내*/
        .final-price {
            padding-top: 40px;
            padding-bottom: 25px;
            color: #ff4c01;
            font-size: 30px;
        }
        /*정품 판정비*/
        .buy-other.step3 {
            border-top: 1px solid #efefef;
            border-bottom: 1px solid #efefef;
            padding-bottom: 20px;  
        }
        .buy-other .other-flex {
            margin: 20px 0;
            font-size: 18px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        /*총 결제금액*/
        .total-price {
            font-size: 40px;
            border-top: 1px solid #efefef;
            border-bottom: 1px solid #efefef;
            
        }
        .total-price a {
            font-size: 26px;
            color: #fe4d01;
            margin-left: 300px;
        }
        
        .total-price span {
            font-size: 26px;
            color: #fe4d01;
            margin-left: 12px;
        }
        /*총 결제금액 END*/
        .checkbox-confirm{
            cursor: pointer;
            display: flex;
            align-items: center;
            margin: 25px 0;
            font-size: 16px;
            line-height: 1.5;
        }
        /*입찰일 설정*/
        .buy-other.step3 .other-flex:last-child {
            border-bottom: 1px solid #efefef;
            padding-bottom: 30px;
            margin-top: 25px;
            margin-bottom: 0;
            
        }
        .buy-info-step3 .step3-flex {
            border-bottom: 1px solid #efefef;
            font-size: 17px;
            align-items: initial;
            
        }
        .buy-info-step3 .step3-flex label {
            font-family: 'NotoSansCJKkr-Medium';
            font-size: 18px;
            width: 140px;
            flex-shrink: 0;
            line-height: 50px;
            padding-left: 36px; 
        }
         /*입찰일 설정 END*/

    </style>
</head>
<body>
	<header>
		<div class="h-container">
		<%@ include file= "../common/header.jsp"%>
		</div>
	</header>
    <section class="pro-buy">
        <div class="buy-container">
            <div class="buy-header">
                <div class="buy-title">구매
                    <span>BUY</span>
                </div>
                <div class="buy-text">
                    LetsResell 구매 규정과 패널티 안내에 동의하셔야 구매 진행이 가능합니다.
                </div>
            </div>
            <div class="buy-info">
                <div class="buy-h-image"></div>
                <div class="buy-h-detail">
                    <div class="pdt-name">이지부스트 350 V2 자이온</div>
                    <div class="pdt-name-en">adidas Yeezy Boost 350 V2 Zyon></div>
                    <div calss="pdt-step-3" id="step-3">
                        <div class="pdt-buy">
                            <span class="pdt-title">즉시 구매</span> 
                        </div>
                        <div class="pdt-buy-price">
                            <input type="text" class="buy-price" id="tender_price">
                            <label id="buy-msg-pad">입력하신금액은 즉시구매 가격과 동일입니다.</label>
                        </div>
                        <div class="buy-other step3">
                            <div class="other-flex">
                                <p>정품 판정비</p>
                                <a>무료</a>
                            </div>
                            <div class="other-flex">
                                <p>배송비</p>
                                <a>3000원</a>
                            </div>
                            <div class="total-price">
                                <a>총 결제금액
                                    <span id="total-price"></span>원
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="buy-info-step3">
                        <div class="step3-flex">
                            <label>입찰일 설정</label>
                        </div>
                        <div class="step3-flex">
                            <label>배송지 정보</label>
                        </div>
                        <div class="step3-flex">
                            <label>결제 카드</label>
                        </div>
                    </div>
                    <label class="checkbox-confirm">
                        <input type="checkbox" id="chk-confirm">
                        최종 금액을 확인하였으며 체결 후 단순취소가 불가합니다.
                    </label>
                    <div class="buy-grid">
                        <div class="btn-buy-continue" onclick="">구매 입찰</div>
                        <div class="btn-buy-cancel" onclick="">구매 취소</div>
                    </div>
                    <footer>
						<div class="f-container">
							<%@ include file= "../common/footer.jsp"%>
						</div>
					</footer>   
                </div>
            </div>
    </section>
</body>
</html>