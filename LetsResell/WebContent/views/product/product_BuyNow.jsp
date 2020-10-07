<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즉시구매</title>
<link href="/LetsResell/resources/css/product/product_BuyNow.css" rel="stylesheet"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="/LetsResell/resources/css/product/product_BiddingBuy.css" rel="stylesheet">
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
               <div class="buy-h-image">
                    <div class="slideshow-container">
                        <div class="mySlides fade" >
                          <div class="numbertext">1 / 5</div>
                          <img src="http://placehold.it/500x500" style="width:100%">
                        </div>
                        
                        <div class="mySlides fade">
                          <div class="numbertext">2 / 5</div>
                          <img src="http://placehold.it/500x500" style="width:100%">
                        </div>
                        
                        <div class="mySlides fade">
                          <div class="numbertext">3 / 5</div>
                          <img src="http://placehold.it/500x500" style="width:100%">
                        </div>

                        <div class="mySlides fade">
                            <div class="numbertext">4 / 5</div>
                            <img src="http://placehold.it/500x500" style="width:100%">
                          </div>

                          <div class="mySlides fade">
                            <div class="numbertext">5 / 5</div>
                            <img src="http://placehold.it/500x500" style="width:100%">
                          </div>
                        
                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>
                        
                        </div>

                </div>
                <script>
                            var slideIndex = 1;
                    showSlides(slideIndex);
                    
                    function plusSlides(n) {
                        showSlides(slideIndex += n);
                    }
                    
                    function currentSlide(n) {
                        showSlides(slideIndex = n);
                    }
                    
                    function showSlides(n) {
                        var i;
                        var slides = document.getElementsByClassName("mySlides");
                        var dots = document.getElementsByClassName("dot");
                        if (n > slides.length) {slideIndex = 1}    
                        if (n < 1) {slideIndex = slides.length}
                        for (i = 0; i < slides.length; i++) {
                            slides[i].style.display = "none";  
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" active", "");
                        }
                        slides[slideIndex-1].style.display = "block";  
                        dots[slideIndex-1].className += " active";
                    }
                  </script>
                <div class="buy-h-detail">
                    <div class="pdt-name">이지부스트 350 V2 자이온</div>
                    <div class="pdt-step-3" id="step-3">
                        <div class="pdt-buy">
                            <span class="pdt-title">즉시 구매</span> 
                        </div>
                        <table class="table table-bordered exam">
                            <tbody>
                              <tr class="">
                                <th colspan="2" class="w-70 pl-4"><input type="text" class="form-control num_only num_comma num_sum" id="fn_type1_price" name="fn_type1_price" value="" placeholder="구매 희망가 입력"></th>
                              </tr>
                              <tr>
                                <th class="other-flex">정품판정비</th>
                                <td class="w-70">무료</td>
                              </tr>
                              <tr>
                                <th class="other-flex">배송비</th>
                                <td class="w-70">3000원</td>
                              </tr>
                              <tr>
                                <td class="pl-4" colspan="2">
                                  <input type="text" class="form-control text-right font-weight-bold num_only num_comma num_sum" id="fn_total" name="fn_total" value="" placeholder="총 결제금액">
                                  <div id="han_money" class="text-right"></div>
                                </td>
                              </tr>
                            </tbody>
                          </table> 
                    </div>
                    <div class="buy-info-step3">
                        <div class="step3-flex">
                            <label>입찰일 설정</label>
                             <div class="input-select-list">
                                    <input type="text" class="input-select" id="day_type" placeholder="입찰 기간을 선택해주세요."
                                           readonly/>
                             </div>
                        </div>
                        <div class="step3-flex">
                            <label>배송지 정보</label> 
                        </div>
                        <div class="step3-flex">
                            <label>결제 카드</label>
                        </div>
                    </div>
                    <form id="buyTerms_form" action="<%= request.getContextPath() %>/buyTerms.pro" method="post" >
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
                    </form> 
                </div>
            </div>
        </div>
    </section>
       <br><br><br>
       <div class="footer">
						
			<%@ include file= "../common/footer.jsp"%>
					
	   </div>    
	    
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
    
            $("#buyTerms_form").submit();
            return true;
        }
    
        function submitDisagree() {
            location.href = "<%= contextPath %>";
            return true;
        }
    
    </script>  
    <!--금액 합산-->
    <script>
        $(function(){

        $('input.num_only').on('keyup',function(){
                var cnt = $(".exam input.num_sum").length;     
                console.log(cnt);
          
        for( var i=1; i< cnt; i++){
            var sum = parseInt($(this).val() || 0 );
            sum++
            console.log(sum);
        }
  
            var sum1 = parseInt($("#fn_type1_price").val() || 0 ); 
            var sum2 = parseInt($("#fn_type2_price").val() || 0);
            var sum = sum1 + 3000;
            console.log(sum);
            $("#fn_total").val(sum);
        });

	});
    </script>
    
</body>
</html>