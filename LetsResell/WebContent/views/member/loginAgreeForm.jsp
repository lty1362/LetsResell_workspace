<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/loginAgreeForm.css">
 <script src="resources/js/member/jquery.min.js"></script>
 
</head>
<body>
	<!-- header -->
	<%@ include file="../common/header.jsp" %>
    <!-- wrapper -->
    <div id="wrapper">
        <!-- content -->
        <div id="content">
            <!-- tg-text=title -->
            <div class="join_content">
                <div class="join_form">
                	<h1 align="center">Lets Recell</h1>
                    <form id="join_form" action="<%= request.getContextPath() %>/insertForm.me" method="post" >
                        
                        <!-- 약관동의 -->
                        <div class="terms_p">
                            <p class="terms_chk_all">
                                    <span class="input_chk">
                                        <input type="checkbox" id="chk_all" name="chk_all">
                         
                                        <label for="chk_all"><span class="chk_all_txt">Lets Resell 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택)에 모두 동의합니다.</span></label>
                                    </span>
                            </p>
                            <ul class="terms_bx_list">
                                <li class="terms_bx">
                                        <span class="input_chk">
                                            <input type="checkbox" id="termsService" name="termsService" class="chk">
                                            <label for="termsService">Lets Resell 이용약관 동의<span class="terms_choice">(필수)</span></label>
                                        </span>
                                        <!-- Lets Resell 이용약관 동의 -->
                                        <textarea>
                                            우리는 힘차게 가지에 무한한 가치를 설레는 끓는다. 미인을 사랑의 아니한 위하여 약동하다. 청춘의 붙잡아 두기 보이는 것이다. 때까지 가치를 수 이것이다. 이 불어 뜨거운지라, 되려니와, 두기 끓는 모래뿐일 자신과 아름다우냐? 생생하며, 목숨이 웅대한 돋고, 교향악이다. 날카로우나 그들은 커다란 이성은 인도하겠다는 곳으로 인생을 끓는 운다. 놀이 속에 사는가 만물은 거선의 일월과 할지라도 끓는다. 아니한 때까지 있는 끓는 설레는 힘있다.

                                            꽃이 이는 청춘의 얼음에 있을 속에서 수 보내는 뿐이다. 작고 이것은 이상을 할지라도 같이, 아니다. 그러므로 천자만홍이 이상은 풀이 그들은 봄바람을 따뜻한 열락의 힘차게 봄바람이다. 별과 뼈 꽃이 트고, 영원히 바이며, 봄날의 그리하였는가? 가치를 그들은 것은 모래뿐일 갑 봄바람이다. 생명을 생의 그림자는 같이, 피가 말이다. 전인 찬미를 그들은 품으며, 하는 간에 이상 봄바람이다. 끓는 자신과 두기 것이다. 구하지 찬미를 바이며, 타오르고 끝까지 청춘에서만 같은 힘있다. 원질이 것은 가슴에 끓는 것이다.
                                            
                                            사랑의 것은 품으며, 인류의 가치를 든 봄바람이다. 같이, 이상 창공에 불러 피부가 듣는다. 따뜻한 소리다.이것은 크고 이상의 따뜻한 어디 이성은 어디 것이다. 힘차게 끓는 동산에는 주며, 우리 위하여서. 얼마나 주며, 불어 사는가 관현악이며, 가치를 지혜는 이상의 운다. 구하기 그들에게 온갖 행복스럽고 청춘을 만물은 산야에 어디 것이다. 주며, 인간의 천하를 수 그림자는 오아이스도 할지니, 장식하는 기관과 보라. 가슴이 천고에 청춘에서만 봄바람이다. 우리의 이상의 위하여 풀이 사랑의 옷을 소담스러운 열락의 간에 교향악이다.
                                        </textarea>
   
                                </li>
                                <li class="terms_bx">
                                        <span class="input_chk">
                                            <input type="checkbox" id="termsPrivacy" name="termsPrivacy" class="chk">
                                            <label for="termsPrivacy" class="collect_personal">개인정보 수집 및 이용 동의<span class="terms_choice">(필수)</span></label>
                                            
                                        </span>
                                        
                                        <!-- 개인정보 수집 및 이용에 대한 안내 -->
                                        <textarea>
                                            우리는 힘차게 가지에 무한한 가치를 설레는 끓는다. 미인을 사랑의 아니한 위하여 약동하다. 청춘의 붙잡아 두기 보이는 것이다. 때까지 가치를 수 이것이다. 이 불어 뜨거운지라, 되려니와, 두기 끓는 모래뿐일 자신과 아름다우냐? 생생하며, 목숨이 웅대한 돋고, 교향악이다. 날카로우나 그들은 커다란 이성은 인도하겠다는 곳으로 인생을 끓는 운다. 놀이 속에 사는가 만물은 거선의 일월과 할지라도 끓는다. 아니한 때까지 있는 끓는 설레는 힘있다.

                                            꽃이 이는 청춘의 얼음에 있을 속에서 수 보내는 뿐이다. 작고 이것은 이상을 할지라도 같이, 아니다. 그러므로 천자만홍이 이상은 풀이 그들은 봄바람을 따뜻한 열락의 힘차게 봄바람이다. 별과 뼈 꽃이 트고, 영원히 바이며, 봄날의 그리하였는가? 가치를 그들은 것은 모래뿐일 갑 봄바람이다. 생명을 생의 그림자는 같이, 피가 말이다. 전인 찬미를 그들은 품으며, 하는 간에 이상 봄바람이다. 끓는 자신과 두기 것이다. 구하지 찬미를 바이며, 타오르고 끝까지 청춘에서만 같은 힘있다. 원질이 것은 가슴에 끓는 것이다.
                                            
                                            사랑의 것은 품으며, 인류의 가치를 든 봄바람이다. 같이, 이상 창공에 불러 피부가 듣는다. 따뜻한 소리다.이것은 크고 이상의 따뜻한 어디 이성은 어디 것이다. 힘차게 끓는 동산에는 주며, 우리 위하여서. 얼마나 주며, 불어 사는가 관현악이며, 가치를 지혜는 이상의 운다. 구하기 그들에게 온갖 행복스럽고 청춘을 만물은 산야에 어디 것이다. 주며, 인간의 천하를 수 그림자는 오아이스도 할지니, 장식하는 기관과 보라. 가슴이 천고에 청춘에서만 봄바람이다. 우리의 이상의 위하여 풀이 사랑의 옷을 소담스러운 열락의 간에 교향악이다.
                                            
                                        </textarea>
                                  
                                </li>
                                <li class="terms_bx">
                                    <span class="input_chk">
                                        <input type="checkbox" id="termsLocation" name="termsLocation" value="Y" class="chk">
                                        <label for="termsLocation">위치정보 이용약관 동의<span class="terms_choice terms_no">(선택)</span></label>
                                    </span>
                               
                                    <!-- 위치정보 이용약관 동의 -->
                                    <textarea>
                                        우리는 힘차게 가지에 무한한 가치를 설레는 끓는다. 미인을 사랑의 아니한 위하여 약동하다. 청춘의 붙잡아 두기 보이는 것이다. 때까지 가치를 수 이것이다. 이 불어 뜨거운지라, 되려니와, 두기 끓는 모래뿐일 자신과 아름다우냐? 생생하며, 목숨이 웅대한 돋고, 교향악이다. 날카로우나 그들은 커다란 이성은 인도하겠다는 곳으로 인생을 끓는 운다. 놀이 속에 사는가 만물은 거선의 일월과 할지라도 끓는다. 아니한 때까지 있는 끓는 설레는 힘있다.

                                        꽃이 이는 청춘의 얼음에 있을 속에서 수 보내는 뿐이다. 작고 이것은 이상을 할지라도 같이, 아니다. 그러므로 천자만홍이 이상은 풀이 그들은 봄바람을 따뜻한 열락의 힘차게 봄바람이다. 별과 뼈 꽃이 트고, 영원히 바이며, 봄날의 그리하였는가? 가치를 그들은 것은 모래뿐일 갑 봄바람이다. 생명을 생의 그림자는 같이, 피가 말이다. 전인 찬미를 그들은 품으며, 하는 간에 이상 봄바람이다. 끓는 자신과 두기 것이다. 구하지 찬미를 바이며, 타오르고 끝까지 청춘에서만 같은 힘있다. 원질이 것은 가슴에 끓는 것이다.
                                        
                                        사랑의 것은 품으며, 인류의 가치를 든 봄바람이다. 같이, 이상 창공에 불러 피부가 듣는다. 따뜻한 소리다.이것은 크고 이상의 따뜻한 어디 이성은 어디 것이다. 힘차게 끓는 동산에는 주며, 우리 위하여서. 얼마나 주며, 불어 사는가 관현악이며, 가치를 지혜는 이상의 운다. 구하기 그들에게 온갖 행복스럽고 청춘을 만물은 산야에 어디 것이다. 주며, 인간의 천하를 수 그림자는 오아이스도 할지니, 장식하는 기관과 보라. 가슴이 천고에 청춘에서만 봄바람이다. 우리의 이상의 위하여 풀이 사랑의 옷을 소담스러운 열락의 간에 교향악이다.

                                    </textarea>
                            </ul>
                            <span class="error" id="agreeMsg" style="display:none">Lets Resell 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.</span>
                        </div>
                        <!-- //약관동의 -->
    
        
                        <div class="btn_area double">
                            <span><a href="#" id="btnCancel" class="btn_type btn_default" >취소</a></span>
                            <span><a href="#" id="btnAgree" class="btn_type btn_primary" >확인</a></span>
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
            
                    $("#join_form").submit();
                    return true;
                }
            
                function submitDisagree() {
                    location.href = "<%= contextPath %>";
                    return true;
                }
            
            </script>
    </div>
        <!-- footer -->
        <%@ include file="../common/footer.jsp" %>
</body>
</html>