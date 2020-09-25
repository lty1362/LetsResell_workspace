<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/LetsResell/resources/css/product/product_BuyTerms.css" rel="stylesheet"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
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
                    
                    <div class="buy-agree-box">
                    
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
                                            <label for="termsService">"구매하려는 제품과 사이즈를 최종 확인하였습니다." <br>
                                                                      "구매 후 사이즈 변경, 단순 변심으로인한 취소는 불가합니다." 
                                                <span class="terms_choice"></span></label>
                                        </span>
                                </li>
                               
                                <li class="terms_bx">
                                        <span class="input_chk">
                                            <input type="checkbox" id="termsPrivacy" name="termsPrivacy" class="chk">
                                            <label for="termsPrivacy" class="collect_personal">"배송 기간은 평일 기준 3~5일이 소요됩니다."<span class="terms_choice"></span></label>
                                            
                                        </span>
                                </li>
                               
                                <li class="terms_bx">
                                    <span class="input_chk">
                                        <input type="checkbox" id="termsServicebad" name="termsServicebad" class="chk">
                                        <label for="termsServicebad">"제품 개체 차이 및 제조사에서 불량 제품으로 판단하지 않는<br>
                                           						       부분 하자로 인정되지 않으며 해당 사유로 환불 불가합니다."<span class="terms_choice"></span></label>
                                    </span>
                                </li>
                               
                                <li class="terms_bx">
                                    <span class="input_chk">
                                        <input type="checkbox" id="termsLocation" name="termsLocation" value="Y" class="chk">
                                        <label for="termsLocation">"거래체결 후 단순 변심은 결제 취소 및 환불은 불가합니다." <span class=""terms_choice""></span></label>
                                    </span>
                            </ul><br>
                            <span class="error" id="agreeMsg" style="display:none">LetsResell 구매 규정과 패널티 안내에 동의하셔야 구매 진행이 가능합니다.</span>
                        </div>
                        <!-- //약관동의 -->
    
        
                        <div class="btn_area double">
                            <span><a href="#" id="btnAgree" class="btn_type btn_primary" >확인</a></span>
                            <span><a href="#" id="btnCancel" class="btn_type btn_default" >취소</a></span>
                        </div>   
      
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
                    $("#termsServicebad").click(function() {
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
                        $("#termsServicebad").prop("checked",true);
                        $("#termsLocation").prop("checked",true);
                    } else {
                        $("#termsService").prop("checked",false);
                        $("#termsPrivacy").prop("checked",false);
                        $("#termsServicebad").prop("checked",false);
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
            
                    $("#join_form").submit();
                    return true;
                }
            
                function submitDisagree() {
                    location.href = "<%= contextPath %>";
                    return true;
                }
            
            </script>   
    </div>   
    </section> 
    <br><br><br>
            <footer>
				<div class="f-container">
					<%@ include file= "../common/footer.jsp"%>
				</div>
			</footer>  
	</body>
	</html>