<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/changePwdSuccess.css">

</head>
<body>
	 <!-- header -->
       <%@ include file="../common/header.jsp" %>
       <!-- wrapper -->
       <div id="wrapper">
           
          <!-- content -->
           <div id="content">
               <h2>비밀번호 변경 완료</h2>
               <hr>
                   <div>
                       <fieldset>
                            <div>
                               	 비밀번호가 변경되었습니다.
                            </div>
                       </fieldset>
                </div>
               <div id="btn_area">
                   <button type="submit" id="enrollBtn" onclick="location.href='<%=request.getContextPath() %>/loginForm.me'">로그인</button>
               </div>
          </div>
      </div>
       <!-- footer -->
      <%@ include file="../common/footer.jsp" %>
</body>
</html>