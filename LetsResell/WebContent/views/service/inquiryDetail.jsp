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
<style>
		#serviceInquiry>a{
			text-decoration-line: underline;
	        font-weight: bold;
		}
		#body_right{
	            width: 75%;
	            height: 800px;
	            padding: 20px;
	            position:relative;
        }
        #title{
            width: 100%;
            height: 50px;
            background: lightgray;
            font-size: 30px;
            font-weight: bold;
            text-align: center;
            line-height: 1.5em;
            margin-bottom: 30px;
            
        }
        #content{
            width: 100%;
            height: 80%;
            border: 1px solid lightgray;
            margin-bottom: 20px;
        }
        #content_title{
            width: 100%;
            height: 7%;
            font-size: 20px;
            padding-left:3%;
            padding-right:3%;
        }
        #content_title>input{
            background: rgb(240,240,240);
        	width:100%;
        	height:100%;
        	padding-left:15px;
        	border:0px;
        	outline-offset:-2px;
        }
        #content_category{
            width: 94%;
            height: 10%;
            margin-left: 3%;
            margin-top: 3%;
        }
        #content_category select{
        	text-align-last:center; 
        	border:1px solid lightgray; 
        	border-radius:3px;
        	height:40px;
        	width:110px;
        }
        #content_category>div{
            float: left;
            text-align: center;
        }
        #category_big{
            width: 48%;
            height: 100px;
            border: 1px solid lightgray;
            margin-right: 4%;
        }
        #category_small{
            width: 48%;
            height: 100px;
            border: 1px solid lightgray;
        }
        #category_big>div:nth-child(1){
            background: lightgray;
            height: 40%;
            font-size: 1.5em;
        }
        #category_big>div:nth-child(2){
            height: 60%;
            font-size: 1.2em;
            padding-top:10px;
        }
        #category_small>div{
            height: 60%;
            font-size: 1.2em;
            padding-top:10px;
        }

        #content_inquiry{
            width: 94%;
            height: 65%;
            border: 1px solid lightgray;
            margin-top:8%;
            padding:10px;
        }
        #content_inquiry>textarea{
        	width:100%;
        	height:100%;
            font-size: 15px;
            border:0px;
            padding-left:10px;
        }
        #update>input{
            background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            border:0px;
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
                <div id="content">
                    <div id="content_title">
                    	<input type="text" placeholder="제목을 입력하세요" value="<%=list.getInquiryTitle()%>">
                    </div>
                    <div id="content_category">
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
                            <div id="smallCategory">
                            	<select name="smallCategory">
                                    <option value="소분류">소분류</option>
                                </select>
                            </div>
                            <div id="smallCash" style="display:none;">
                            	<select name="smallCategory">
                                    <option value="결제이용">결제이용</option>
                                    <option value="환불">환불</option>
                                    <option value="수수료">수수료</option>
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                            <div id="smallProduct" style="display:none;">
                            	<select name="smallCategory">
                                    <option value="구매">구매</option>
                                    <option value="판매">판매</option>
                                    <option value="신규 제품">신규 제품</option>
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                            <div id="smallService" style="display:none;">
                            	<select name="smallCategory">
                                    <option value="UI관련">UI관련</option>
                                    <option value="배송조회">배송조회</option>
                                    <option value="거래내역">거래내역</option>
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                            <div id="smallUser" style="display:none;">
                            	<select name="smallCategory">
                                    <option value="회원가입">회원가입</option>
                                    <option value="로그인">로그인</option>
                                    <option value="마이페이지">마이페이지</option>
                                    <option value="블랙리스트">블랙리스트</option>
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                            <div id="smallEtc" style="display:none;">
                            	<select name="smallCategory">
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div id="content_inquiry">
                    	<textarea rows="100" cols="100" style="resize:none;" placeholder="내용을 써주세요"><%=list.getInquiryContent() %></textarea>
                    </div>
                </div>
                <div id="update" align="right">
                    <input type="submit" value="수정">
                </div>
	        </div>
		</div>
	<%@ include file= "../common/footer.jsp"%>
	</div>
	<script>
        $(function(){
        	$("#category_big select").change(function(){
        		var aaa = $(this).val();
        		if(aaa=="대분류"){
        			$("#smallCategory").css("display","block");
        			$("#category_small div").not($("#smallCategory")).not($("#exclude")).css("display","none");
        		}else if(aaa=="결제"){
        			$("#smallCash").css("display","block");
        			$("#category_small div").not($("#smallCash")).not($("#exclude")).css("display","none");
        		}else if(aaa=="물품"){
        			$("#smallProduct").css("display","block");
        			$("#category_small div").not($("#smallProduct")).not($("#exclude")).css("display","none");
        		}else if(aaa=="서비스"){
        			$("#smallService").css("display","block");
        			$("#category_small div").not($("#smallService")).not($("#exclude")).css("display","none");
        		}else if(aaa=="회원"){
        			$("#smallUser").css("display","block");
        			$("#category_small div").not($("#smallUser")).not($("#exclude")).css("display","none");
        		}else if(aaa=="기타"){
        			$("#smallEtc").css("display","block");
        			$("#category_small div").not($("#smallEtc")).not($("#exclude")).css("display","none");
        		}
        	});
        });
	</script>
</body>
</html>