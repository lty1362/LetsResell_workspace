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
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
        div{
            box-sizing: border-box;
        }
        
        .content{
            width: 1200px;
            height: 1000px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 80px;
        }

        /*사이드바*/

        .mypage_menu{
            width: 220px;
            float: left;
        }

        .mypage_menu > div{
            height: 60px;
            text-align: center;
            background-color: rgb(220, 220, 220);
        }

        .mypage_menu p{
            margin: auto;
            font-size: 25px;
            font-weight: bold;
        }

        .mypage_menu ul {
            list-style: none;
            padding: 0;
            margin: 0;
            border: 2px solid rgb(220, 220, 220);
            border-top: none;
        }

        .mypage_menu ul > li > a {
            text-align: left;
            display: block;
            padding: 11px 0;
            margin: 0 15px;
            font-size: 18px;
            color: #333333;
            border-bottom: 1px solid #f0f0f0;
            text-decoration: none;
        }
        
    </style>
</head>
<body>

            <div class="mypage_menu">
                <div>
                    <p>마이페이지</p>
                </div>
                <ul>
                    <li>
                        <a href="/LetsResell/myPage.info">회원정보</a>
                    </li>
                    <li>
                        <a href="myPage.wishList?userNo=<%=login.getUserNo()%>">관심상품</a>
                    </li>
                    <li>
                        <a href="/LetsResell/salesDetail.mp?currentPage=1?userNo=<%=login.getUserNo()%>">판매내역</a>
                    </li>
                    <li>
                        <a href="/LetsResell/purchaseDetail.mp?currentPage=1?userNo=<%=login.getUserNo()%>">구매내역</a>
                    </li>
                </ul>
            </div>
    
</body>
</html>