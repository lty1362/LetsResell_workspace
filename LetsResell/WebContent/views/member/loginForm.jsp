<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/loginForm.css">

</head>
<body>
	<!-- header -->
   <%@ include file="../common/header.jsp" %>


    <!-- wrapper -->
    <div id="wrapper">

        <!-- content-->
        <div id="content">
    
            <div id="login_form">
            	
                <h1 align="center">Lets Recell</h1>
                <form action="<%= request.getContextPath() %>/login.me" id="login_form_input" method="post">
                    <table>
                        <tr>
                            <td>
                                <input type="email" name="userId" placeholder="이메일" required> <Br><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" name="userPwd" placeholder="비밀번호"required><br><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="로그인"><Br><br>
                            </td>
                        </tr>
                    </table>
                </form>
             
                    <div>
                        <hr>
                    </div>
                    <div id="login_form_etc">
                        <a href="<%=request.getContextPath() %>/selectId.me">계정찾기</a> 
                        |
                        <a href="<%=request.getContextPath() %>/authPwd.me">비밀번호찾기</a> 
                        |
                        <a href="<%=request.getContextPath() %>/loginAgree.me">회원가입</a>
                    </div>
                   
            </div>
        
        </div>
        
    </div>  
    
        	 <!-- footer -->
    		
			<%@ include file="../common/footer.jsp" %>
	
</body>
</html>