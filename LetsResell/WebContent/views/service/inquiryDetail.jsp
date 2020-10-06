<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.LetsResell.service.model.vo.*" %>
<%
	Inquiry list = (Inquiry)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<link rel="stylesheet" href="/LetsResell/resources/css/service/inquiryDetail.css">
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
                	<div id="enrollDate">
                		작성일 : <%=list.getInquiryEnrollDate() %>
                	</div>
                <form action="update.inquiry" method="post">
                <input type="hidden" name="inquiryNo" value="<%=list.getInquiryNo()%>">
                <input type="hidden" name="userNo" value="<%=login.getUserNo()%>">
                <div id="content">
                	<%if(list.getInquiryStatus().equals("Y")){ %>
	                    <div id="content_title">
	                    	<input type="text" readonly name="title" placeholder="제목을 입력하세요" value="<%=list.getInquiryTitle()%>">
	                    </div>
	                <% }else{ %>
	                    <div id="content_title">
	                    	<input type="text" required name="title" placeholder="제목을 입력하세요" value="<%=list.getInquiryTitle()%>">
	                    </div>
	                <% } %>
                    <div id="content_category">
                    	<%if(list.getInquiryStatus().equals("Y")){ %>
	                        <div id="category_big">
	                            <div>대분류</div>
	                            <div class="cate"><%=list.getInquiryCategoryBig() %></div>
	                        </div>
	                        <div id="category_small">
	                            <div style="background: lightgray; height: 40%; padding:0px; font-size:1.5em" id="exclude">소분류</div>
	                            <div class="cate"><%=list.getInquiryCategorySmall() %></div>
	                        </div>
		                <% }else{ %>
	                        <div id="category_big">
	                            <div>대분류</div>
	                            <div>
	                            	<select name="bigCategory">
	                            		<option value="대분류" selected>대분류</option>
	                                    <option value="결제">결제</option>
	                                    <option value="물품">물품</option>
	                                    <option value="서비스">서비스</option>
	                                    <option value="회원">회원</option>
	                                    <option value="기타">기타</option>
	                                </select>
	                            </div>
	                        </div>
	                        <div id="category_small">
	                            <div style="background: lightgray; height: 40%; padding:0px; font-size:1.5em" id="exclude">소분류</div>
	                        	<select id="smallCategory" name="smallCategory">
	                                <option value="소분류">소분류</option>
	                            </select>
	                        	<select id="smallCash" name="smallCategory">
	                                <option value="결제이용">결제이용</option>
	                                <option value="환불">환불</option>
	                                <option value="수수료">수수료</option>
	                                <option value="기타">기타</option>
	                            </select>
	                        	<select id="smallProduct" name="smallCategory">
	                                <option value="구매">구매</option>
	                                <option value="판매">판매</option>
	                                <option value="신규 제품">신규 제품</option>
	                                <option value="기타">기타</option>
	                            </select>
	                        	<select id="smallService" name="smallCategory">
	                                <option value="UI관련">UI관련</option>
	                                <option value="배송조회">배송조회</option>
	                                <option value="거래내역">거래내역</option>
	                                <option value="기타">기타</option>
	                            </select>
	                        	<select id="smallUser" name="smallCategory">
	                                <option value="회원가입">회원가입</option>
	                                <option value="로그인">로그인</option>
	                                <option value="마이페이지">마이페이지</option>
	                                <option value="블랙리스트">블랙리스트</option>
	                                <option value="기타">기타</option>
	                            </select>
	                        	<select id="smallEtc" name="smallCategory">
	                                <option value="기타">기타</option>
	                            </select>
	                        </div>
		                <% } %>
                    </div>
                    <%if(list.getInquiryStatus().equals("Y")){ %>
	                    <div id="content_inquiry">
	                    	<textarea name="content" readonly rows="100" cols="100" style="resize:none;" placeholder="내용을 써주세요"><%=list.getInquiryContent() %></textarea>
	                    </div>
	                    <div id="content_answer"><%=list.getInquiryAnswer() %></div>
	                <% }else{ %>
	                    <div id="content_inquiry">
	                    	<textarea name="content" required rows="100" cols="100" style="resize:none;" placeholder="내용을 써주세요"><%=list.getInquiryContent() %></textarea>
	                    </div>
	                <% } %>
                </div>
                <%if(list.getInquiryStatus().equals("Y")){ %>
	                <div id="update" align="right">
	                    <input type="button" onclick="history.back();" value="확인">
	                </div>
                <% }else{ %>
	                <div id="update" align="right">
	                    <input type="submit" onclick="return filter();" value="수정">
	                </div>
                <% } %>
                </form>
	        </div>
		</div>
		<%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
        $(function(){
        	$("#category_small select").css("display","none");
        	$("#smallCategory").css("display","");
        	$("#category_big select").change(function(){
        		var aaa = $(this).val();
        		if(aaa=="대분류"){
        			$("#smallCategory").css("display","");
        			$("#smallCategory").attr("disabled",false);
        			$("#category_small select").not("#smallCategory").css("display","none");
        			$("#category_small select").not("#smallCategory").attr("disabled",true);
        		}else if(aaa=="결제"){
        			$("#smallCash").css("display","");
        			$("#smallCash").attr("disabled",false);
        			$("#category_small select").not("#smallCash").css("display","none");
        			$("#category_small select").not("#smallCash").attr("disabled",true);
        		}else if(aaa=="물품"){
        			$("#smallProduct").css("display","");
        			$("#smallProduct").attr("disabled",false);
        			$("#category_small select").not("#smallProduct").css("display","none");
        			$("#category_small select").not("#smallProduct").attr("disabled",true);
        		}else if(aaa=="서비스"){
        			$("#smallService").css("display","");
        			$("#smallService").attr("disabled",false);
        			$("#category_small select").not("#smallService").css("display","none");
        			$("#category_small select").not("#smallService").attr("disabled",true);
        		}else if(aaa=="회원"){
        			$("#smallUser").css("display","");
        			$("#smallUser").attr("disabled",false);
        			$("#category_small select").not("#smallUser").css("display","none");
        			$("#category_small select").not("#smallUser").attr("disabled",true);
        		}else if(aaa=="기타"){
        			$("#smallEtc").css("display","");
        			$("#smallEtc").attr("disabled",false);
        			$("#category_small select").not("#smallEtc").css("display","none");
        			$("#category_small select").not("#smallEtc").attr("disabled",true);
        		}
        	});
        	
        	<%if(list.getInquiryStatus().equals("Y")){ %>
				$(".cate").css("font-size","25px");
				$("#wrap").css("height","1700px");
				$("#footer").css("margin-top","85px");
				$("#content").css("height","800px");
				$("#body_right").css("height","1300px");
				$("#content_answer").addClass("hi");
				$("#content_inquiry").css({"margin-top":"5%", "height":"46%"});
            <% } %>
        });
        
        filter = function(){
        	if($("select[name=bigCategory]").val()=="대분류"){
        		alert("대분류를 선택하세요.");
        		return false;
        	};
        }
        
	</script>
</body>
</html>