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
<style>
    body {
        margin: 0;
        font-family: Dotum,'돋움',Helvetica,sans-serif;
    }
    #wrapper {
        position: relative;
    }  
    #content{
        position:absolute;
        margin-top: 80px;
        margin-left: 30%;
        width: 600px;
        height: 400px;
    }
    fieldset{
        margin-top: 20px;
        height: 200px;
        
    }
    
	.btn_area.double {
	    margin: 29px -5px 0;
	   	display: block;
	  	margin-left: 30%;
	   	
	}
	
	
	.btn_type {
		float:left;
		margin : 0 5px auto;
		display: block;
        width: 100px;
        padding: 21px 0 17px;
        border: 0;
        border-radius: 5px;
        cursor: pointer;
        color: white;
        background-color: black;
        font-size: 15px;
        font-family: Dotum,'돋움',Helvetica,sans-serif;
	}
    
    fieldset>div{
        float: left;
        margin: 80px;
    }
    

</style>
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