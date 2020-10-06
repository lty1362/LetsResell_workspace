<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member m= (Member)session.getAttribute("m");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/changePwdForm.css">
</head>
  
<body>
	<!-- header -->
       <%@ include file="../common/header.jsp" %>
       <!-- wrapper -->
       <div id="wrapper">
           
          <!-- content -->
           <div id="content">
           	<form id="changeForm" action="<%= contextPath %>/changePwd.me" type="post">
               <h2>비밀번호찾기</h2>
               <hr>
               <div>
                   <h4>비밀번호를 찾고자 하는 계정을 입력하세요.</h4>
               </div>
                   <div>
                       <fieldset>
                        <div class="changePwd">
                                
                            <div class="namePwd">
					                                 새 비밀번호<br><Br>
					                                 새 비밀번호확인
                            </div>
                            <div class="newPwdinput">
                                <input type="hidden" id="userName" name="userName" value="<%=m.getName()%>">
                                   
                                <input type="password" id="newPwd" name="newPwd" required><br>
                         
                                <input type="password" id="checkNewPwd">
                                           
                            </div>
                            
                            <div class="RestricPwd">
                                <hr>
                               	 영문,숫자,특수문자(8자이상 16자 미만)
                            </div>
                            

                       </fieldset>
                    </div>
               <div id="btn_area">
                   <button type="submit" id="checkBtn" onclick="return validate();">확인</button>
               </div>
             </form>
          </div>
      </div>
       <!-- footer -->
      <%@ include file="../common/footer.jsp" %>
     <script>
           
      //input요소들 가져오기
      
      	var pw1 = document.getElementById("newPwd");
     	var pw2 = document.getElementById("checkNewPwd");
  	
     	
     	
     	pw1.addEventListener("change", checkPwd, false);
  		pw2.addEventListener("change", checkPwd2, false);
     	
  		
  		 function checkPwd(){
         	
         			pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
           	
         	
           	 
	                       if(!pwPattern.test(pw1.value)){
	                    		alert("형식에 맞지 않는 비밀번호입니다..");
	                    	   pw1.value="";
	                    	   pw1.focus();
	                    	 
	                       }
	                	
	                 	
           }
		            
     	
	     	function checkPwd2(){
	     	
	    		
	           if(pw1.value != pw2.value){
	        	  	alert("동일한 비밀번호를 입력하세요");
	        	 	pw2.value="";
	      	  		pw2.focus();
	        	   
	           }
	    	
		
			 }
	     	
	     	function validate(){
	     		
	     		if("<%=m.getUserPwd()%>" == pw1.value){
            		alert("새로운 비밀번호를 입력하세요");
            		 pw1.value="";
            		 pw2.value="";
                	 pw1.focus();
                	 return false;
            	   
               }
	     		
	     	}
      
        </script>
      
</body>
</html>