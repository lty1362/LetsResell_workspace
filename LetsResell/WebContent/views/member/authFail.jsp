<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/member/authFail.css">

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
                       <fieldset>
                            <div>
                               	 고객님의 정보와 일치하는 계정이 없습니다.
                            </div>
                       </fieldset>
                </div>
               <div id="btn_area">
                   <button type="submit" id="enrollBtn" onclick="location.href='<%=request.getContextPath() %>/loginAgree.me'">회원가입</button>
               </div>
          </div>
      </div>
       <!-- footer -->
      <%@ include file="../common/footer.jsp" %>
</body>
</html>