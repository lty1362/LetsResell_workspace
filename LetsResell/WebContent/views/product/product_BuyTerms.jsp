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
        .checkbox-custom {
            cursor: pointer;
            display: flex;
            align-items: center;
            margin: 25px 0;
            font-size: 14px;
            line-height: 1.5;
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
	                    <div class="buy-agree-box">
	                        <label class="checkbox-custom">
	                            <input type="checkbox">
	                            <i></i>
	                            "구매하려는 제품과 사이즈를 최종 확인하였습니다." <br>
	                            "구매 후 사이즈 변경, 단순 변심으로인한 취소는 불가합니다."  
	                        </label>
	                        <label class="checkbox-custom">
	                            <input type="checkbox">
	                            <i></i>
	                            "배송 기간은 평일 기준 3~5일이 소요됩니다." <br>
	                        </label>
	                        <label class="checkbox-custom">
	                            <input type="checkbox">
	                            <i></i>
	                            "제품 개체 차이 및 제조사에서 불량 제품으로 판단하지 않는<br>
	                            부분 하자로 인정되지 않으며 해당 사유로 환불 불가합니다."
	                        </label>
	                        <label class="checkbox-custom">
	                            <input type="checkbox">
	                            <i></i>
	                            "거래체결 후 단순 변심은 결제 취소 및 환불은 불가합니다." <br>
	                        </label>
	                    </div>
	                    <div class="buy-grid">
	                        <div class="btn-buy-continue" onclick="">구매 계속</div>
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