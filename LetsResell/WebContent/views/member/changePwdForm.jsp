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
</head>
    <style>
    body {
        margin: 0;
        font-size:12px;
        font-family: Dotum,'돋움',Helvetica,sans-serif;
    }
    #wrapper {
       	height:100%;
    }  
    #content{
        margin:auto; 
	    width: 600px;
	    height: 490px;
    }
    fieldset{
        margin-top: 20px;
        height: 200px;
     
    }
    
    #btn_area {
        margin: 30px 0 91px;
    }
    #checkBtn{
        display: block;
        width: 100px;
        margin: auto;
        padding: 21px 0 17px;
        border: 0;
        border-radius: 5px;
        cursor: pointer;
        color: white;
        background-color: black;
        font-size: 15px;
        font-family: Dotum,'돋움',Helvetica,sans-serif;
    }

    .changePwd{
        margin-top: 5%;
        margin-left: 10%;
        
    }
    .namePwd, .newPwdinput{
            
            padding: 20px;
            height:100%;
            box-sizing:border-box;
            display: inline-block;
    }
    .newPwdinput > input{
        width: 200px;
        margin-bottom: 10px;
        border: solid 1px #dadada;
        background: #fff;
    }
    .RestricPwd{
        width: 80%;
    }
  
    </style>
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
					                                 현재 비밀번호<br><br>
					                                 새 비밀번호<br><Br>
					                                 새 비밀번호확인
                            </div>
                            <div class="newPwdinput">
                                <input type="hidden" id="userName" name="userName" value="<%=m.getName()%>">
                                <input type="password" id="userPwd" name="userPwd" required><br>
                                   
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
            function validate(){
                //유효성 검사 : 비밀번호
            
                
            
                    //input요소들 가져오기
                    var pw1 = document.getElementById("userPwd");
                    var pw2 = document.getElementById("newPwd");
                   	var pw3 = document.getElementById("checkNewPwd");
            
                       

                        // 1) 비밀번호 검사
                        // 영문자(대소문자), 숫자, 특수문자로만 총 8~16자로 입력해야되는 경우
            
                        pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
            
                        if(pw1.value === "") {
                           alert("비밀번호를 입력하세요");
                           pw1.focus();
                           return false;
                        } else if( pw1.value != "<%=m.getUserPwd() %>") {
                            alert("현재 비밀번호가 일치하지  않습니다.");
                            pw1.value="";
                            pw1.focus();
                            return false;
                        }
                        
                        if(pw2.value === "") {
                            alert("비밀번호를 입력하세요");
                            pw2.focus();
                            return false;
                         } else if(!pwPattern.test(pw2.value)) {
                             alert("유효한 비밀번호를 입력하세요");
                             pw2.value="";
                             pw2.focus();
                             return false;
                         }
            
                        // 2) 비밀번호와 비밀번호 확인이 일치하는지
                        if(pw3.value === "") {
                           alert("비밀번호 확인을 하세요.");
                           pw3.focus();
                           return false;
                        } else if(pw2.value != pw3.value) {
                            alert("동일한 비밀번호를 입력하세요");
                            pw3.value="";
                            pw3.focus();
                            return false;
                        }
            
                      

                    }
        </script>
      
</body>
</html>