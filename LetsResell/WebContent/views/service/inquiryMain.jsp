<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<style>
		#serviceInquiry>a{
			text-decoration-line: underline;
	        font-weight: bold;
		}
		#body_right{
            width: 75%;
            height: 90%;
            padding: 20px;
            position:relative;
        }
		#title{
            background: lightgray;
            font-size: 30px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            padding: 5px;
        }
        #inquiry{
            border-collapse: collapse;
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }
        #inquiry th{
            background: lightgray;
            height: 25px;
            padding-top: 3px;
            font-size:20px;
        }
        #inquiry td{
            border: 1px solid lightgray;
           	font-size:18px;
        }
        #inquiry tr>th:nth-child(1){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(4){
            border-right: 1px solid white;
        }
        #inquiry tr>th:nth-child(5){
            border-right: 1px solid white;
        }
        #inquiry tr td:nth-child(1){
            border-left: 0px;
            width: 3%;
        }
        #inquiry tr td:nth-child(2){
            width: 8%;
        }
        #inquiry tr td:nth-child(3){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            width: 42%;
        }
        #inquiry tr td:nth-child(4){
            width: 12%;
        }
        #inquiry tr td:nth-child(5){
            width: 10%;
            border-right: 0px;
        }
        #write a{
        	background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            display:block;
            text-align:center;
            padding-top:5px;
        }
        #write a:hover{
        	text-decoration:none;
        }
        #pages th{
            background: rgb(236, 236, 236);
            display: inline-block;
            width: 30px;
            height: 30px;
            margin-left: 5px;
            margin-right: 5px;
            font-size:20px;
            font-weight: 400;
            margin-top:30px;
            text-align:center;
        }
        
</style>
</head>
<body>
	<div id="wrap">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
	            <div id="body_left">
                	<%@ include file="serviceSideMenu.jsp" %>
	            </div>
	
	            <div id="body_right">
	               <div id="title">
                    1:1 문의
                </div>
                <table id="inquiry">
                    <tr>
                        <th>No</th>
                        <th>분류</th>
                        <th>제목</th>
                        <th>작성일</th>
                        <th>답변 상태</th>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>결제</td>
                        <td>(제목)</td>
                        <td>2020-05-31</td>
                        <td>답변 대기</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>기타</td>
                        <td>(제목)</td>
                        <td>2020-05-31</td>
                        <td>답변 대기</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>회원</td>
                        <td>(제목)</td>
                        <td>2020-05-31</td>
                        <td>답변 완료</td>
                    </tr>
                </table>
                <div id="write" align="right">
                	<a href="<%=contextPath%>/views/service/inquiryDetail.jsp">글쓰기</a>
                </div>
                <div id="pages"  align="center">
                    <table>
                        <tr>
                            <th>
                                <
                            </th>
                            <th style="background: rgb(74, 74, 74); color:white">1</th>
                            <th>
                                >
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
	        </div>
	        <%@ include file= "../common/footer.jsp"%>
	   </div>
	    <script>
		     $(function(){
		       $("#inquiry tr td:nth-child(2)").click(function(){
		         var ino = $(this).children().eq(0).text();
		         location.href = "<%=contextPath%>/detail.inqury?ino="+ino; // 쿼리스트링
		       });
		     });
	   </script>
</body>
</html>