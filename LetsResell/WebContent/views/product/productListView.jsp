<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/LetsResell/resources/css/product/productListView.css">
<title>레츠리셀-제품 리스트</title>
</head>
<body>
<!-- header 추가 -->
<%@ include file="../common/header.jsp" %>

<div class="outer">

    <div id="filter_area">
        <!-- filter 추가 -->
        <%@ include file="../common/filter.jsp" %>
	</div>
	
	<div id="product_area">

    	<div class="product_outer">

	        <h1><b>footwear</b></h1>
	        <br>
	
	        <div id="product">
	
	            <div id="product_img">
	                <img src="imgs/product_sample.jpg" alt="제품이미지" width="100%" height="100%">
	            </div>
	
	            <div id="product_detail">
	                <p>나이키 X 오프화이트</p>
	                	최저 판매가 <br>
	                <b>￦ </b><b>500,000</b>
	            </div>
	
	        </div>
	
	        
	
	        <div class="pagingArea" align="center">
	
	            <!-- 맨 처음으로 (<<) -->
				<button>&lt;&lt;</button>
				
				<!-- 이전 페이지로 (<) -->
				<button>&lt;</button>
				
				<button>1</button>
				<button>2</button>
				<button>3</button>
				<button>4</button>
				<button>5</button>
				
				
				<!-- 다음 페이지로 (>) -->
				<button>&gt;</button>
				
				<!-- 맨 끝으로 (>>) -->
	            <button>&gt;&gt;</button>
	            
			</div>

		</div>
		<!-- filter area 추가 -->
		<%@ include file="../common/filterArea.jsp" %>
    </div>
</div>
<!-- foot 추가 -->
<%@ include file="../common/footer.jsp" %>
</body>
</html>