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
<link rel="stylesheet" href="resources/css/member/authId.css">

</head>
<body>
		 <!-- header -->
       <%@ include file="../common/header.jsp" %>
       <!-- wrapper -->
       <div id="wrapper">
           
          <!-- content -->
           <div id="content">
               <h2>계정찾기</h2>
               <hr>
               <div>
                   <h3>고객님의 정보와 일칠하는 항목입니다.</h3>
               </div>
                   <div>
                       <fieldset>
                            <div>
                               	 <%= m.getUserId() %>
                            </div>
                            <div>
                              	 <%= m.getEnrollDate() %>
                            </div>
                       </fieldset>
                	</div>
               <div class="btn_area double">
                   <button type="submit" class="btn_type btn_login"  onclick="location.href='<%=request.getContextPath()%>/loginForm.me'">로그인</button>
                   <button type="submit" class="btn_type btn_authPwd" onclick="location.href='<%=request.getContextPath()%>/authPwd.me'">비밀번호찾기</button>
               </div>
          </div>
      </div>
       <!-- footer -->
      <%@ include file="../common/footer.jsp" %>
      
   
</body>
</html>