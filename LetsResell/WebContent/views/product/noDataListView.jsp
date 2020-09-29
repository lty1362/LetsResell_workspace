<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레츠리셀-상품이름</title>
<link rel="stylesheet" href="/LetsResell/resources/css/product/noDataListView.css">
<script src="/LetsResell/resources/js/product/noDataListView.js" rel="javascript"></script>
</head>
<body>
<!-- header 추가 -->
<%@ include file="../common/header.jsp" %>
<div class="noData_outer">

    <div id="filter_area">
        <!-- filter 추가 -->
        <%@ include file="../common/filter.jsp" %>
    </div>

    <div id="product_area">

        <div class="product_outer">

                <h1><b>컨버스 런스타 하이크 블랙</b></h1>
                <br>

                <div id="btn_box" align="center">

                    <div id="wish_btn">

                        <div id="wish_btn_img">
                            <img src="/LetsResell/resources/images/product/heart.png" alt="" width="90%" height="90%">
                        </div>

                        <div id="wish_btn_name">
                            Dibs
                        </div>
                    </div>

                    <div id="sell_btn">

                        <div id="sell_btn_img">
                            <img src="/LetsResell/resources/images/product/pen.png" alt="" width="90%" height="90%">
                        </div>

                        <div id="sell_btn_name">
                            Sell
                        </div>

                    </div>

                </div>

                <br><br>

                <div id="sale_imgList" align="center">

                    <div id="sale_img">

                        <div id="sale_img1">
                            <img src="/LetsResell/resources/images/product/sample1.jpg" alt="img1" width="100%" height="100%" onclick="imgPop(this.src);">
                        </div>
                        <div id="sale_img2">
                            <img src="/LetsResell/resources/images/product/sample2.jpg" alt="img2" width="100%" height="100%" onclick="imgPop(this.src);">
                        </div>
                        <div id="sale_img3">
                            <img src="/LetsResell/resources/images/product/sample3.jpg" alt="img3" width="100%" height="100%" onclick="imgPop(this.src);">
                        </div>

                    </div>

                    <div id="sale_btn">

                        <button id="sale_btn1"></button>
                        <button id="sale_btn2"></button>
                        <button id="sale_btn3"></button>
                        <button id="sale_btn4"></button>

                    </div>

                </div>

                <div id="sale_youtube">
                    <iframe src="https://www.youtube.com/embed/Nl199fznWzM" frameborder="0"></iframe>
                </div>

                <br><br><br>

                <h2>상품정보</h2>

                <table>

                    <tr align="left">
                        <th width="200" height="50">제품 번호</th>
                        <td width="150">166800c</td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">발매일</th>
                        <td>2020-08-25</td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">발매가</th>
                        <td>166,800</td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">색상</th>
                        <td>블랙</td>
                    </tr>
                    <tr align="left">
                        <th width="200" height="50">치수</th>
                        <td>220-280</td>
                    </tr>

                </table>

                <div id="sale_detail">
                    <p>
			                        러닝화와 척의 만남. 
			
			                        투톤 컬러의 러버솔이 매력적인 청키한 스타일의 플랫폼 스니커즈입니다. 
			
			                        아이코닉한 척테일러 올스타의 오리지널리티를 그대로 유지하면서도 혁신적이고 새로운 스타일을 제시합니다.

                       * 캔버스 어퍼의 하이탑 스니커즈

                       * 편안한 착화감을 제공하는 오솔라이트 인솔

                       * 투톤 컬러의 러버 러기드 아웃솔

                       * 아이코닉한 척테일러 패치
                    </p>
                </div>
        </div>
		<!-- filterArea 추가 -->
		<%@ include file="../common/filterArea.jsp" %>
	</div>
</div>

<!-- footer 추가 -->
<%@ include file="../common/footer.jsp" %>
</body>
</html>