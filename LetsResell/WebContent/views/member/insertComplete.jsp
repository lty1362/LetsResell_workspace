<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body {
        margin: 0;
        font-family: Dotum,'돋움',Helvetica,sans-serif;
    }
    #wrapper {
        height:100%;
    }  
    #content{
         margin:auto; 
	    width: 600px;
	    height: 485px;
    }
    fieldset{
        margin-top: 20px;
        height: 100px;
    }
    p{  

        margin-top: 40px;
        margin-left: 30px;
    }
    #btn_area {
        margin: 30px 0 91px;
    }
    #btn{
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


</style>
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