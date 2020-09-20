<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    #btn_area {
        margin: 30px 0 91px;
    }
    #enrollBtn{
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
    
    fieldset > div{
        margin: 100px;
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