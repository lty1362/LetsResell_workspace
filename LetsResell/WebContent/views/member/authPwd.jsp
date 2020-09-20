<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
    .checkId *{
    	margin-left:120px;
        margin-top:80px;
    }
    .checkId  input{
       
        box-sizing: border-box;
        width: 50%;
        height: 30px;
        border: solid 1px #dadada;
        padding: 10px 14px 10px 14px;
        background: #fff;

    }
  	.error{
  		color : red;
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
                   <button type="submit" id="checkBtn" onclick="location.href='<%=request.getContextPath() %>/loginAgree.me'" >다음</button>
               </div>
              </form>
          </div>
      </div>
       <!-- footer -->
      <%@ include file="../common/footer.jsp" %>
      
   
      
</body>
</html>