<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/member/authPwd.css">

</head>
<body>
	 <!-- header -->
       <%@ include file="../common/header.jsp" %>
       <!-- wrapper -->
       <div id="wrapper">
           
          <!-- content -->
           <div id="content">
           		<form action="<%=request.getContextPath()%>/authCheckId.me">
               <h2>비밀번호찾기</h2>
               <hr>
               <div>
                   <h4>비밀번호를 찾고자 하는 계정을 입력하세요.</h4>
               </div>
                   <div>
                       <fieldset>
                            <div class="checkId">
                                    <input type="email" name="userId" ><br><br>
                                
                            </div>
                       </fieldset>
                </div>
               <div id="btn_area">
                   <button type="submit" id="checkBtn" onclick="location.href='<%=request.getContextPath() %>/authCheckId.me'" >다음</button>
               </div>
              </form>
          </div>
      </div>
       <!-- footer -->
      <%@ include file="../common/footer.jsp" %>
      
   
      
</body>
</html>