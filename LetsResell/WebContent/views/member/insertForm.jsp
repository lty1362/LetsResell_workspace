<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/insertForm.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	 <!-- header -->
       <%@ include file="../common/header.jsp" %>
        <!-- wrapper -->
        <div id="wrapper">
            
            <!-- content-->
            <div id="content">
           		<h1 align="center">Lets Recell</h1>
                <form action="<%=request.getContextPath()%>/insert.me" id="join_form" name="form1" method="post">
                    <!-- ID -->
                    <div>
                        <h3 class="join_title">
                            <label for="id">계정</label>
                        </h3>
                      
	                        <span>
	                            <input type="email" id="email"  name="userId"class="int" maxlength="20" required>
	                        </span>
                
                    </div>

                    <!-- PW1 -->
                    <div>
                        <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                        <span class="box int_pass">
                            <input type="password" id="pswd1" name="userPwd" class="int" maxlength="20" required>
                        </span>
                        
                    </div>

                    <!-- PW2 -->
                    <div>
                        <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                        <span class="box int_pass_check">
                            <input type="password" id="pswd2" class="int" maxlength="20"required>
                        </span>
                        
                    </div>

                    <!-- NAME -->
                    <div>
                        <h3 class="join_title"><label for="name">이름</label></h3>
                        <span class="box int_name">
                            <input type="text" id="name" name="name"class="int" maxlength="20" required>
                        </span>
                    
                    </div>

                    <!-- BIRTH -->
                    <div>
                        <h3 class="join_title"><label for="yy">생년월일</label></h3>

                        <div id="bir_wrap">
                            <!-- BIRTH_YY -->
                            <div id="bir_yy">
                                <span class="box">
                                    <input type="text" id="yy" name = "yy"class="int" maxlength="4" placeholder="년(4자)" required>
                                </span>
                            </div>

                            <!-- BIRTH_MM -->
                            <div id="bir_mm">
                                <span class="box">
                                    <select id="mm" name="mm" class="sel" required>
                                        <option>월</option>
                                        <option value="01">1</option>
                                        <option value="02">2</option>
                                        <option value="03">3</option>
                                        <option value="04">4</option>
                                        <option value="05">5</option>
                                        <option value="06">6</option>
                                        <option value="07">7</option>
                                        <option value="08">8</option>
                                        <option value="09">9</option>                                    
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </span>
                            </div>

                            <!-- BIRTH_DD -->
                            <div id="bir_dd">
                                <span class="box">
                                    <input type="text" id="dd" name="dd" class="int" maxlength="2" placeholder="일(2자리)" required>
                                </span>
                            </div>

                        </div>
                        
                    </div>

                    <!-- MOBILE -->
                     <div >
                        <h3 class="join_title"><label for="mobile">휴대전화</label></h3>
                        <div id="mobile_wrap">
                            <span id="boxMobile">
                                <input type="text" id="mobile" name="phone" class="int" maxlength="16" placeholder="전화번호 입력(-없이 입력)"required>
                            </span>
                            <a href="#" class="btnAuth" id="sendPhoneNumber" role="button" >인증받기</a>
                        </div>
                        <div id="mobile_wrap">
                            <span id="boxMobile2">
                                <input type="text" id="ckmobile" class="int" maxlength="16" placeholder="인증번호 입력"required>
                            </span>
                            <a href="#" class="btnAuth" id="checkBtn" role="button"  >확인</a>
                        </div>
                    </div>


                    <!-- JOIN BTN-->
                    <div class="btn_area">
                        <a href="#"  id="btnJoin" role="button" onclick="return validate();">확인</a>
                    </div>
                
               </form>
            </div> 
            <!-- content-->
			
        </div> 
        <!-- wrapper -->
        
        <!-- footer -->
         <%@ include file="../common/footer.jsp" %>
         <script>
        	
        
        
        	var sendPhone = document.getElementById("sendPhoneNumber");
        	var checkBtn = document.getElementById("checkBtn"); 
        	var mobile = document.getElementById("mobile");
    		var ckmobile = document.getElementById("ckmobile");
    		var email = document.getElementById("email")
            var pw1 = document.getElementById("pswd1");
            var pw2 = document.getElementById("pswd2");
            var userName = document.getElementById("name");
            var yy = document.getElementById("yy");
            var mm = document.getElementById("mm");
            var dd = document.getElementById("dd");
  
        	
        	email.addEventListener("change", checkId, false);
        	pw1.addEventListener("change", checkPwd, false);
        	pw2.addEventListener("change", checkPwd2, false);
            sendPhone.addEventListener("click", sendTerms,false);
				
            
            var res = false;
            
            function checkId(){
            	
            	emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;	
            	
	           	 $.ajax({
		                  type: "post",
		                  url: "<%=request.getContextPath() %>/insertCheckId.me",
		                  data: {userId: email.value},
		                  dataType:"json",	
		                  success:function(data) {
		                	  console.log(data);
		                	
		                		
		                       if(!emailPattern.test(email.value)){
		                    	   alert("유효하지 않는 메일형식입니다.");
		                    	   email.value="";
		                    	   email.focus();
		                    	  	
		                       }else if(data.loginUserId != email.value){
		                    	   alert("멋진 아이디네요!");
		                       }else{
		                    	   alert("중복된 계정입니다.");
		                    	   email.value="";
		                    	   email.focus();
		                    	   
		                       }
		                	
		                  }
		              })
           	
                	
           }
            
            function checkPwd(){
            	
            	pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
              	
            	
              	 
   	                       if(!pwPattern.test(pw1.value)){
   	                    		alert("형식에 맞지 않는 비밀번호입니다..");
	                    	   pw1.value="";
	                    	   pw1.focus();
   	                    	 
   	                       }else{
   	                    		alert("사용해도 되는 비밀번호입니다.!");
   	                    	   
   	                       }
   	                	
   	                 	
              }
            
            function checkPwd2(){
            	
       		
  	                       if(pw1.value != pw2.value){
  	                    	  	alert("동일한 비밀번호를 입력하세요");
  	                    	 	pw2.value="";
	                    	  	pw2.focus();
  	                    	   
  	                       }
  	                	
                  	
             }
            
            
        
            
        	function sendTerms(){
        		
        		
        		     		
			        	  if(mobile.value != "" ){
				              alert("발송 완료");
				              $.ajax({
				                  type: "post",
				                  url: "<%=request.getContextPath() %>/authPhone.me",
				                  data: {phoneNumber: mobile.value},
				                  dataType:"json",	
				                  success:function(data) {
				                	  
				                	
				                		checkBtn.addEventListener("click",function(){
				                          if(data.numStr== ckmobile.value){
				                                alert("인증 성공!!");
				              					res = true;
				              					return res;
				                                
				                                
				                          }else{
				                                 alert("인증 실패!!");
				                                 res = false;
				                                 return res;
				                          }
				                	
				                	})
				                  }
				              })
					    
			          }else{
			        	  alert("전화번호를 입력해주세요.");
			        	  res = false;
			        	  return res;
			          }
			        	
			        
			  
				return res;	  
	        	
       		}
        	function validate(){
                //유효성 검사 : 계정, 비밀번호, 비밀번호 일치, 이름, 생년월일, 휴대폰
            
                
                  		console.log(res);
              
                        //1) 계정 검사
                        emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;
                        if(email.value === ""){ 
                            alert("계정을 입력하세요");
                            email.focus();
                            return false;
                        } else if(!emailPattern.test(email.value)) {
                            alert("유효한 계정을 입력하세요");
                            email.value="";
                            email.focus();
                            return false;
                        } 


                        // 2) 비밀번호 검사
                        // 영문자(대소문자), 숫자, 특수문자로만 총 8~16자로 입력해야되는 경우
            
                        pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
            
                        if(pw1.value === "") {
                           alert("비밀번호를 입력하세요");
                           pw1.focus();
                           return false;
                        } else if(!pwPattern.test(pw1.value)) {
                            alert("유효한 비밀번호를 입력하세요");
                            pw1.value="";
                            pw1.focus();
                            return false;
                        }
            
                        // 3) 비밀번호와 비밀번호 확인이 일치하는지
                        if(pw2.value === "") {
                           alert("비밀번호 확인을 하세요.");
                           pw2.focus();
                           return false;
                        } else if(pw1.value != pw2.value) {
                            alert("동일한 비밀번호를 입력하세요");
                            pw2.value="";
                            pw2.focus();
                            return false;
                        }
            
                        // 4) 이름 검사
                        // 한글로 2글자 이상
                        namePattern = /^[가-힣]{2,}$/;
                        if(userName.value === "") {
                           alert("이름을 입력하세요");
                            userName.focus();
                            return false;
                        } else if(!namePattern.test(userName.value)) {
                            alert("유효한 이름을 입력하세요.");
                            userName.value="";
                            userName.focus();
                            return false;
                        }

                        // 5) 생년월일 검사
                        yearPattern = /[0-9]{4}/;

                        if(!yearPattern.test(yy.value)) {
                           alert("태어난 년도 4자리를 정확하게 입력하세요.");
                           yy.value="";
                           yy.focus();
                           return false;
                        } else {
                            mm.focus();
                        }

                        if(mm.value === "월") {
                            alert("태어난 월을 선택하세요.");
                            return false;
                        } else {
                            dd.focus();
                        }
                        
                        datePattern = /\d{1,2}/;
                        if(dd.value === "") {
                            alert("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
                            return false;
                        } else if(!datePattern.test(dd.value)|| Number(dd.value)<1 || Number(dd.value)>31){
                            alert("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
                            dd.value="";
                            dd.focus();
                            return false;
                        }

                        // 폰 번호 검사

                        phonePattern= /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;
                        if(mobile.value === "") {
                            alert("전화번호를 입력하세요.");
                            mobile.focus();
                            return false;
                        } else if(!phonePattern.test(mobile.value)) {
                            alert("형식에 맞지 않는 번호입니다.");
                            mobile.value="";
                            mobile.focus();
                            return false;
                        } 
                        
           
              
                        
                        if(res != true){
                        	alert("인증번호가 맞지 않습니다.")
                        	return false;
                        	
                        }else{
                        	
                        	
                        	document.form1.submit();
                        	return true;
                        }

       }
       	
        	
           
  </script>
        
</body>
</html>