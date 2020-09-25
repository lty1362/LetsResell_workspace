<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/LetsResell/resources/css/product/product_BuyNow.css" rel="stylesheet"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
</head>
<body>
	<header>
		<div class="h-containe">
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
                             <div class="input-select-list">
                                    <input type="text" class="input-select" id="day_type" placeholder="입찰 기간을 선택해주세요."
                                           readonly/>
                                    <ul>
                                        <li data-id="1">1일 후 입찰만료</li>
                                        <li data-id="2">3일 후 입찰만료</li>
                                        <li data-id="3">7일 후 입찰만료</li>                                
                                    </ul>
                             </div>
                        </div>
                        <div class="step3-flex">
                            <label>배송지 정보</label> 
	                       
                        </div>
                        
                        <div class="step3-flex">
                            <label>결제 카드</label>
                        </div>
                    </div>
                    <!-- 약관동의 -->
                     <div class="terms_p">
                           
                        <ul class="terms_bx_list">
                            <li class="terms_bx">
                                    <span class="input_chk">
                                        <input type="checkbox" id="termsService" name="termsService" class="chk">
                                        <label for="termsService">"최종 금액을 확인하였으며 체결 후 단순취소가 불가합니다." 
                                            <span class="terms_choice"></span></label>
                                    </span>
                            </li>
                        </ul><br>
                        <span class="error" id="agreeMsg" style="display:none">LetsResell 구매 규정과 패널티 안내에 동의하셔야 구매 진행이 가능합니다.</span>
                    </div>
                    <!-- //약관동의 -->

    
                    <div class="btn_area double">
                        <span><a href="#" id="btnAgree" class="btn_type btn_primary" >구매 확인</a></span>
                        <span><a href="#" id="btnCancel" class="btn_type btn_default" >구매 취소</a></span>
                    </div>  
                    <br><br><br><br><br>  
                    <footer>
						<div class="f-container">
							<%@ include file= "../common/footer.jsp"%>
						</div>
					</footer>    
                </div>
            </div>
    </section>
      <script>
      //입찰기간 설정
      initSelect();
        function initSelect() {
            $('.input-select').click(function () {
                if ($(this).next('ul').is(':hidden')) {
                    $(this).next('ul').slideDown();
                } else {
                    $(this).next('ul').slideUp();
                }
            });
    
            $('.input-select').blur(function () {
                if (!$(this).next('ul').hasClass('hover')) {
                    $(this).next('ul').slideUp();
                }
            });
    
            $('.input-select-list ul').hover(function () {
                $(this).addClass('hover');
            }, function () {
                $(this).removeClass('hover');
            });
    
            $('.input-select-list ul').find('li').click(function () {
                var value = $(this).data('id');
                var title = $(this).html();
                $(this).parent().prev('.input-select').attr('data-value', value);
                $(this).parent().prev('.input-select').val(title);
                $(this).parent().find('li').removeClass('active');
                $(this).addClass('active');
                $(this).parent('ul').slideUp();
            });
        }
      //입찰기간 설정  END
	    </script>
	    
	    <script>
        $(document).ready(function() {

            $("#termsService").click(function() {
                viewTerms();
            });
    
            $("#termsServicebad").click(function() {
                viewTerms();
            });
    
            $("#btnCancel").click(function(event) {
                
                submitDisagree();
                
            });
    
            $("#btnAgree").click(function(event) {
               
                submitAgree();
               
            });
        });

        function checkTerms() {
              var result = true;
    
            if ($("#termsService").is(":checked") == false){
                $("#agreeMsg").show();
                   result = false;
            } else {
                $("#agreeMsg").hide();
            }
    
           return result;
        }
    
        function submitAgree() {
            if (checkTerms() != true) {
                return false;
            }
    
            $("#join_form").submit();
            return true;
        }
    
        function submitDisagree() {
            location.href = "<%= contextPath %>";
            return true;
        }
    
    </script>  
    
</body>
</html>