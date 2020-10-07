<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.LetsResell.service.model.vo.*, java.util.*" %>
<%
	ArrayList<String> tradelist = (ArrayList<String>)request.getAttribute("tradelist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부정 판매자 신고</title>
<link rel="stylesheet" href="/LetsResell/resources/css/service/reportEnroll.css">
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
                    	부정 판매자 신고
                	</div>
                <form action="enroll.report" method="post">
                <input type="hidden" name="userNo" value="<%=login.getUserNo() %>">
                <div id="content">
                    <div id="content_title">
                    	<input name="title" required type="text" placeholder="제목을 입력하세요" required>
                    </div>
                    <div id="content_category">
                        <div id="category">
                            <div>분류</div>
                            <div>
                            	<select name="bigCategory" required>
                            		<option value="분류" selected>분류</option>
                                    <option value="결제">결제</option>
                                    <option value="물품">물품</option>
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                        </div>
                        <div id="pastDeal">
                        	<div>거래내역</div>
                            <div>
                            	<select name="pastDeal" required>
                            		<%if(tradelist.isEmpty()){ %>
	                            			<option value="거래내역" selected>거래내역</option>
	                            		<% }else{ %>
	                            			<option value="거래내역" selected>거래내역</option>
	                            			<%for(int i = 0 ; i < tradelist.size(); i++){ %>
	                            				<option value="<%=tradelist.get(i)%>"><%= tradelist.get(i)%>
	                            			<% } %>
	                            		<% } %>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div id="content_report">
                    	<textarea name="content" required rows="100" cols="100" style="resize:none;" placeholder="내용을 써주세요" required></textarea>
                    </div>
                </div>
                <div id="update" align="right">
                    <input type="submit" onclick="return filter();" value="작성">
                </div>
                </form>
	        </div>
		</div>
	    <%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
		filter = function(){
	    	if($("select[name=bigCategory]").val()=="분류"){
	    		alert("분류를 선택하세요.");
	    		return false;
	    	};
	    	if($("select[name=pastDeal]").val()=="거래내역"){
	    		alert("거래내역을 선택하세요.");
	    		return false;
	    	};
	    }
	</script>
</body>
</html>