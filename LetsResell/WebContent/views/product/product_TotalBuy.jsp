<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매totald</title>
<link href="/LetsResell/resources/css/product/product_TotalBuy.css" rel="stylesheet"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="/LetsResell/resources/css/product/product_BiddingBuy.css" rel="stylesheet"> 
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
                <div class="buy-h-image">
                 <div class="slideshow-container">
				    <div class="mySlides fade">
				      <div class="numbertext">1 / 3</div>
				      <img src="http://placehold.it/300x300" style="width:100%">
				      <div class="text">Caption Text</div>
				    </div>
				    
				    <div class="mySlides fade">
				      <div class="numbertext">2 / 3</div>
				      <img src="http://placehold.it/300x300" style="width:100%">
				      <div class="text">Caption Two</div>
				    </div>
				    
				    <div class="mySlides fade">
				      <div class="numbertext">3 / 3</div>
				      <img src="http://placehold.it/300x300" style="width:100%">
				      <div class="text">Caption Three</div>
				    </div>
				    
				    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
				    <a class="next" onclick="plusSlides(1)">&#10095;</a>
				    
				    </div>
				    <br>
				    
				    <div style="text-align:center">
				      <span class="dot" onclick="currentSlide(1)"></span> 
				      <span class="dot" onclick="currentSlide(2)"></span> 
				      <span class="dot" onclick="currentSlide(3)"></span>
				      <span class="dot" onclick="currentSlide(4)"></span>
				      <span class="dot" onclick="currentSlide(5)"></span> 
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
                        <div class="final-price">
                            최종 금액 안내
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
                    <div class="buy-info-box">
                    
                    	<form id="buyend_form" action="<%= request.getContextPath() %>" method="post" >
                       <!-- 약관동의 -->
                          <div class="terms_p">
                            <p class="terms_chk_all">
                                    <span class="input_chk">
                                        <input type="checkbox" id="chk_all" name="chk_all">
                         
                                        <label for="chk_all"><span class="chk_all_txt">LetsResell 구매 규정과 패널티 안내에 동의하셔야 구매 진행에 모두 동의합니다.</span></label>
                                    </span>
                            </p>
                            <ul class="terms_bx_list">
                                <li class="terms_bx">
                                        <span class="input_chk">
                                            <input type="checkbox" id="termsService" name="termsService" class="chk">
                                            <label for="termsService">판매자의 제품 미발송, 판매 거부, 오배송, 검수 불합격 등의 사유로 거래가
                                                                                                                                                             취소될수 있습니다. 
                                                <span class="terms_choice"></span></label>
                                        </span>
                                </li>
                               
                                <li class="terms_bx">
                                        <span class="input_chk">
                                            <input type="checkbox" id="termsPrivacy" name="termsPrivacy" class="chk">
                                            <label for="termsPrivacy">입찰 후 금액 수정 및 입찰 삭제는 자유롭게 가능하며
                                            						     거래 체결 후 단순 변심으로 거래 취소는 불가 합니다.
                                            <span class="terms_choice"></span></label>  
                                        </span>
                                </li>
                                                            
                                <li class="terms_bx">
                                    <span class="input_chk">
                                        <input type="checkbox" id="termsLocation" name="termsLocation" value="Y" class="chk">
                                        <label for="termsLocation">구매 약관 위반시 패널티를 부가 하여 구매 및 판매에 취소 및 이용불과 될수 있습니다.
                                         <span class="terms_choice"></span></label>  
                                    </span>
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
        
        <!-- //content -->
   

            <script>
                $(document).ready(function() {
            
            
                    $("#chk_all").prop("checked",false);
            
                
                    $("#chk_all").click(function() {
                        setTerms();
                    });
            
                    $("#termsService").click(function() {
                        viewTerms();
                    });
            
                    $("#termsPrivacy").click(function() {
                        viewTerms();
                    });
                    $("#termsLocation").click(function() {
                        viewTerms();
                    });
            
                  
            
                    $("#btnCancel").click(function(event) {
                        
                        submitDisagree();
                        
                    });
            
                    $("#btnAgree").click(function(event) {
                       
                        submitAgree();
                       
                    });
            
                
            
                });
            
            
            
                function setTerms() {
                    if ($("#chk_all").is(":checked")) {
                        $("#termsService").prop("checked",true);
                        $("#termsPrivacy").prop("checked",true);
                        $("#termsLocation").prop("checked",true);
                    } else {
                        $("#termsService").prop("checked",false);
                        $("#termsPrivacy").prop("checked",false);
                        $("#termsLocation").prop("checked",false);
                    
                    }
            
                    return true;
                }
            
                
            
                function viewTerms() {
            
                    if( !$("#termsService").is(":checked") || !$("#termsPrivacy").is(":checked") || !$("#termsLocation").is(":checked")) {
                        $("#chk_all").prop("checked",false);
                    }
            
                    if( $("#termsService").is(":checked") && $("#termsPrivacy").is(":checked") && $("#termsLocation").is(":checked")) {
                        $("#chk_all").prop("checked",true);
                    }
            
                    return true;
                }
            
                function checkTerms() {
                  	var result = true;
            
                    if ($("#termsService").is(":checked") == false || $("#termsPrivacy").is(":checked") == false) {
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
            
                    $("#buyend_form").submit();
                    return true;
                }
            
                function submitDisagree() {
                    location.href = "<%= contextPath %>";
                    return true;
                }
            
            </script>   
                    </div>
                  
    </section>
    <br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br>
    <div class="footer">					
		<%@ include file= "../common/footer.jsp"%>			
	</div>    
</body>
</html>