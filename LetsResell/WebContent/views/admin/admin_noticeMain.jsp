<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style>
		#menu3List>:nth-child(1){
	        text-decoration-line: underline;
	        font-weight: bold;
	    }
	    #menu4>*:nth-child(2), #menu4>*:nth-child(3){
	    	display:none;
	    }
	    #menu2>*:nth-child(2), #menu2>*:nth-child(3){
	    	display:none;
	    }
	    #menu1>*:nth-child(2), #menu1>*:nth-child(3){
	    	display:none;
	    }
        #notice{
            border-collapse: collapse;
            width: 100%;
            font-size:20px;
        }
        #notice th{
           background: lightgray;
           height: 25px;
           font-size:25px;
           padding:5px;
           text-align:center;
        }
        #notice td{
            border: 1px solid lightgray;
            
        }
        #notice tr>th:nth-child(1){
            background: white;
        }
        #notice tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #notice tr>th:nth-child(3){
            border-right: 1px solid white;
        }
        #notice tr td:nth-child(1){
            border: 0px;
            width: 10px;
        }
        #notice tr td:nth-child(2){
            border-left: 0px;
            text-align: center;
            width: 30px;
        }
        #notice tr td:nth-child(3){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            font-size: 0.9em;
            cursor:pointer;
        }
        #notice tr td:nth-child(4){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            font-size: 0.9em;
            width: 17%;
            text-align: center;
        }
        #notice a{
        	color:black;
        }
        #notice [type=checkbox]{
        	width:20px;
        	height:20px;
        }
        #deleteButton{
        	padding-top:20px;
        }
        #deleteButton>button{
        	background: rgb(74, 74, 74);
            color: white;
            border-radius: 3px;
            font-size:20px;
            width: 80px;
            height: 40px;
            text-align:center;
            border:0px;
        }
        
        #search{
            margin-top: 30px;
        }
        #search>select{
            height:40px;
            width:100px;
            border: 1px solid lightgray;
            text-align-last: center;
            font-size: 20px;
        }
        #search_in{
            display:inline-block;
            height: 40px;
            width: 400px;
            border: 1px solid lightgray;
        }
        #search_in>[type="search"]{
            border:0px;
            height: 100%;
            width: 85%;
            outline-offset:-2px;
           	padding-top:4px;

        }
        #search_in>[type="submit"]{
            background: lightgray;
            border: 0px;
            height: 100%;
            width: 15%;
            font-weight: bold;
            font-size:20px;
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
                	<%@ include file="admin_sideMenu.jsp" %>
	            </div>
	            <div id="body_right">
	                <div id="title">
	                    공지사항
	                </div>
	                <table id="notice">
	                    <tr>
	                        <th></th>
	                        <th>No</th>
	                        <th>제목</th>
	                        <th>등록일</th>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>10</td>
	                        <td><a href="<%=contextPath%>/views/admin/admin_noticeDetail.jsp">무엇을 품으며, 구하지 과실이 그리하였는가?</a></td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>9</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>8</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>7</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>6</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>5</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>4</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>3</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>2</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td><input type="checkbox"></td>
	                        <td>1</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
                	</table>
                	<div id="deleteButton" align="right">
                		<button type="button">삭제</button>
                	</div>
	                <div id="search"  align="center">
	                    <select name="filter" id="filter">
	                        <option value="" selected>내용</option>
	                        <option value="userCode">회원코드</option>
	                        <option value="userName">이름</option>
	                        <option value="address">주소</option>
	                        <option value="phone">전화번호</option>
	                        <option value="email">이메일</option>
	                    </select>
	                    <div id="search_in">
	                        <input type="search"><input type="submit" value="검색">
	                    </div>
	                </div>
	                <div id="pages"  align="center">
	                    <table>
	                        <tr>
	                            <th>
	                                <
	                            </th>
	                            <th>1</th>
	                            <th style="background: rgb(74, 74, 74); color:white">2</th>
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
	   <%-- <script>
		     $(function(){
		       $("#notice tr td:nth-child(2)").click(function(){
		         var nno = $(this).children().eq(0).text();
		         location.href = "<%=contextPath%>/detail.notice?nno="+nno; // 쿼리스트링
		       });
		     });
	   </script> --%>
</body>
</html>