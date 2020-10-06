<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.LetsResell.service.model.vo.*" %>
<% 
	Inquiry inquiry = (Inquiry)request.getAttribute("inquiry");
	int currentPage = (int)(request.getAttribute("currentPage"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_inquiryDetail.css">
</head>
<body>
	<div id="wrap" style="height:1600px;">
		<%@ include file= "../common/header.jsp"%>
		<div id="body">
	            <div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	            </div>
	
	            <div id="body_right">
	            <form action="updateInquiry.admin" method="post">
	            	<input type="hidden" name="ino" value="<%= inquiry.getInquiryNo()%>">
	            	<input type="hidden" name="currentPage" value="<%= currentPage%>">
	            	<div id="title">
                    	1:1 문의
                	</div>
                	<div id="enrollDate">
                		작성일 : <%=inquiry.getInquiryEnrollDate() %>
                	</div>
	                <div id="content">
	                    <div id="content_title">
	                    	<div><%=inquiry.getInquiryContent() %></div>
	                    </div>
	                    <div id="content_category">
	                        <div id="category_big">
	                            <div>대분류</div>
	                            <div><%=inquiry.getInquiryCategoryBig() %></div>
	                        </div>
	                        <div id="category_small">
	                            <div>소분류</div>
	                            <div><%=inquiry.getInquiryCategorySmall() %></div>
	                        </div>
	                    </div>
	                    <div id="content_inquiry">
	                    	<%=inquiry.getInquiryContent() %>
	                    </div>
	                    <%if(inquiry.getInquiryStatus().equals("Y")){ %>
		                    <div id="content_answer">
		                    	<textarea name="answer" required><%=inquiry.getInquiryAnswer() %></textarea>
		                    </div>
	                    <% }else{%>
		                    <div id="content_answer">
		                    	<textarea name="answer" required></textarea>
		                    </div>
	                    <% }%>
	                </div>
                	<div id="update" align="right">
	                    <input type="submit" value="답변 완료">
	                </div>
                </form>
        	</div>
		</div>
	    <%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
		$("#footer").css("margin-top","100px");
	</script>
</body>
</html>