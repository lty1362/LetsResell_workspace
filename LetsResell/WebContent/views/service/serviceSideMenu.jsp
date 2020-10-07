<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.member.model.vo.Member" %>    
<%
	Member login = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>serviceSideMenu</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/LetsResell/resources/css/service/serviceSideMenu.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%if(login == null){ %>
	<div id="sideMenu">
	    <div id="service">
	        <div id="serviceTitle">고객센터</div>
	        <div id="serviceNotice">
	       		<a href="<%=request.getContextPath()%>/noticeForm.service?currentPage=1">공지사항</a>
	        </div>
	        <div id="serviceFAQ">
	        	<a href="<%=request.getContextPath()%>/FAQform.service?currentPage=1">FAQ</a>
	        </div>
	        <div id="serviceInquiry">
	        	<a href="<%=request.getContextPath()%>/inquiryForm.service?currentPage=1">1:1 문의</a>
	        </div>
	        <div id="serviceReport">
	        	<a href="<%=request.getContextPath()%>/reportForm.service?currentPage=1">부정 판매자 신고</a>
	        </div>
	    </div>
	    <div id="serviceTime">
	        <p>고객센터 <br>
	            1588-9393
	        </p>
	        <p>
	            월 - 금 <br>
	            09:00 ~ 17:00 <br>
	            (토 / 일 / 공휴일 휴무)
	        </p>
    	 </div>
     </div>
     <% }else{ %>
     <div id="sideMenu">
	    <div id="service">
	        <div id="serviceTitle">고객센터</div>
	        <div id="serviceNotice">
	       		<a href="<%=request.getContextPath()%>/noticeForm.service?currentPage=1">공지사항</a>
	        </div>
	        <div id="serviceFAQ">
	        	<a href="<%=request.getContextPath()%>/FAQform.service?currentPage=1">FAQ</a>
	        </div>
	        <div id="serviceInquiryLogin">
	        	<form action="inquiryForm.service" method="post">
	        		<input type="hidden" name="currentPage" value="1">
	        		<input type="hidden" name="un" value="<%=login.getUserNo()%>">
		        	<input type="submit" value="1:1 문의">
	        	</form>
	        </div>
	        <div id="serviceReportLogin">
	        	<form action="reportForm.service" method="post">
	        		<input type="hidden" name="currentPage" value="1">
	        		<input type="hidden" name="un" value="<%=login.getUserNo()%>">
		        	<input type="submit" value="부정 판매자 신고">
	        	</form>
	        </div>
	    </div>
	    <div id="serviceTime">
	        <p>고객센터 <br>
	            1588-9393
	        </p>
	        <p>
	            월 - 금 <br>
	            09:00 ~ 17:00 <br>
	            (토 / 일 / 공휴일 휴무)
	        </p>
    	 </div>
     </div>
     <% } %>
     <script>
    	$(function(){
    		if($(".pagingArea").is("div")){
	    		var width = $(".pagingArea").css("width");
	     		if(width.length==4){
		     		$(".pagingArea").css("margin-left",-Number(width.substring(0,2))/2);
	     		} else if(width.length==5){
		     		$(".pagingArea").css("margin-left",-Number(width.substring(0,3))/2);
	     		} else if(width.length==6){
		     		$(".pagingArea").css("margin-left",-Number(width.substring(0,3))/2);
	     		}
    		}
    	});
    </script>
</body>
</html>