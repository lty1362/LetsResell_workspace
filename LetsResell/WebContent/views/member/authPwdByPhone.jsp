<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	Member m = (Member)session.getAttribute("m");
	
%>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/member/authPwdByPhone.css">

</head>
<body>
	<!-- header -->
       <%@ include file="../common/header.jsp" %>
       <!-- wrapper -->
       <div id="wrapper">
           
          <!-- content -->
           <div id="content">
           <form id="form1" action="<%= contextPath %>/changePwdForm.me" type="post">
               <h2>비밀번호찾기</h2>
               <hr>
               <div>
                   <h3>휴대전화로 인증</h3>
               </div>
                   <div>
                   		
                       <fieldset>
                           <div>
                              <p>회원정보에 등록한 휴대전화로 인증 <br>
                                  <span id="s1">회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</span>
                              </p>
                           </div>
                           <div>
                              <div class="auth">
                                
                                <div>
					                                    이름 <br><br>
					                                    휴대전화
                                </div>
                                <div class="authinput">
                                	
                                    <input type="text" id="userName" name="userName" required><br>
                           			
                                    <input type="text" id="inputPhoneNumber" name="phoneNumber" required><br>
                             
                                    <input type="text" id="inputCertifiedNumber">
                                               
                                </div>
                                
                                <div class="authsend">
                                   <!--  <button id="sendPhoneNumber">인증받기</button> -->
                                   <a href="#" id="sendPhoneNumber" role="button">인증받기</a>
                                   
                                </div>
                              </div>
        				</div>
                       </fieldset>
                      
               		</div>
               
               <div id="btn_area">
                   <a href="#" id="checkBtn" role="button">다음</a>
               </div>
     		</form>
          </div>
      </div>
       <!-- footer -->
      <%@ include file="../common/footer.jsp" %>
      
      <script>
      $(document).ready(function() {
   	   		
    	  
    	  
    	  var name = "<%= m.getName() %>";
    	  
    	  console.log(name);
    	
     	 
          $("#sendPhoneNumber").click(function(){
        	  if($("#userName").val() != "" && $("#inputPhoneNumber").val() != "" && $("#userName").val() == name ){
	              alert("발송 완료");
	  
	             
	              $.ajax({
	                  type: "post",
	                  url: "<%=request.getContextPath() %>/authPhone.me",
	                  data: {phoneNumber: $("#inputPhoneNumber").val()},
	                  dataType:"json",	
	                  success:function(data) {
	                	  
	                	  $('#checkBtn').click(function(){
	      					
	                          if(data.numStr== $('#inputCertifiedNumber').val()){
	                                alert("인증 성공!!");
	                             
	                                $("#form1").submit();
									
	                                
	                          }else{
	                                 alert("인증 실패!!");
	                          }
	                	  })
	                  }
	              })
		    
          }else{
        	  alert("정보가 일치하지 않습니다.");
          }
      })
});
          
              
  </script>
</body>
</html>