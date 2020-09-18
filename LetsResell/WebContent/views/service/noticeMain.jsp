<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
 <style>
        #serviceNotice>a{
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
            border-right: 1px solid white;
        }
        #notice tr>th:nth-child(2){
            border-right: 1px solid white;
        }
        #notice tr td:nth-child(1){
            border-left: 0px;
            text-align: center;
            width: 30px;
        }
        #notice tr td:nth-child(2){
            border-right: 0px;
            padding: 7px;
            padding-left: 10px;
            font-size: 0.9em;
            cursor:pointer;
        }
        #notice tr td:nth-child(3){
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
        #search{
            margin-top: 50px;
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
                	<%@ include file="serviceSideMenu.jsp" %>
	            </div>
	
	            <div id="body_right">
	                <div id="title">
	                    공지사항
	                </div>
	                <table id="notice">
	                    <tr>
	                        <th>No</th>
	                        <th>제목</th>
	                        <th>등록일</th>
	                    </tr>
	                    <tr>
	                        <td>10</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>9</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>8</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>7</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>6</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>5</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>4</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>3</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>2</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>무엇을 품으며, 구하지 과실이 그리하였는가?</td>
	                        <td>2020-05-31</td>
	                    </tr>
	                </table>
	                <div id="search"  align="center">
	                    <select name="filter" id="filter">
	                        <option value="content" selected>내용</option>
	                        <option value="title">제목</option>
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
	   <script>
		     $(function(){
		       $("#notice tr td:nth-child(2)").click(function(){
		         var nno = $(this).children().eq(0).text();
		         location.href = "<%=contextPath%>/detail.notice?nno="+nno; // 쿼리스트링
		       });
		     });
	   </script>
</body>
</html>