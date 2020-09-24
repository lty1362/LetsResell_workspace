<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/insertComplete.css">
</head>

<body>
	 <!-- header -->
     <%@ include file="../common/header.jsp" %>
     <!-- wrapper -->
     <div id="wrapper">
         
        <!-- content -->
         <div id="content">
             <h2>회원가입완료</h2>
             <hr>
             <div>
                     <fieldset>
                         <div>
                            <p>회원가입이 완료되었습니다.</p>
                         </div>
                     </fieldset>
             </div>
             <div id="btn_area">
                 <button type="submit" id="btn" onclick="location.href='<%=request.getContextPath()%>/loginForm.me'" >로그인</button>
             </div>
        </div>
    </div>
    <!-- footer -->
     <%@ include file="../common/footer.jsp" %>
</body>
</html>