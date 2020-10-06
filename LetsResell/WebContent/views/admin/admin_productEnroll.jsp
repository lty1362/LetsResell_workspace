<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_productEnroll.css">
</head>
<body>
<div id="wrap" style="height:1900px;">
         <%@ include file= "../common/header.jsp"%>
        <div id="body">
			<div id="body_left">
                	<%@ include file="admin_sideMenu.jsp" %>
	        </div>
            <div id="body_right">
	        <form action="productEnroll.admin" method="post" enctype="multipart/form-data">
                <div id="title">신규 제품 등록</div>
                <div id="registerWrap">
                    <div id="registerImage">
                        <div id="registerImageMain" class="filebox" style="padding:0px;">
                        	<img src="" id="titleImg" width="100%" height="100%">
	                        <label for="registerMainImage" id="main">메인 이미지 등록</label>
	                     	<input type="file" name="image1" id="registerMainImage" onchange="loadImg(this,1);" required>
                        </div>
                        <div id="registerImageDetail">
	                        <div id="registerImageDetail1" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg1" width="100%" height="100%">
		                        <label for="registerDetailImage1" id="detail1">상세 이미지 등록</label>
		                     	<input type="file" name="image2" id="registerDetailImage1" onchange="loadImg(this,2);">
	                        </div>
	                        <div id="registerImageDetail2" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg2" width="100%" height="100%">
		                        <label for="registerDetailImage2" id="detail2">상세 이미지 등록</label>
		                     	<input type="file" name="image3" id="registerDetailImage2" onchange="loadImg(this,3);">
	                        </div>
	                        <div id="registerImageDetail3" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg3" width="100%" height="100%">
		                        <label for="registerDetailImage3" id="detail3">상세 이미지 등록</label>
		                     	<input type="file" name="image4" id="registerDetailImage3" onchange="loadImg(this,4);">
	                        </div>
	                        <div id="registerImageDetail4" class="filebox" style="padding:0px;">
	                        	<img src="" id="detailImg4" width="100%" height="100%">
		                        <label for="registerDetailImage4" id="detail4">상세 이미지 등록</label>
		                     	<input type="file" name="image5" id="registerDetailImage4" onchange="loadImg(this,5);">
	                        </div>
                        </div>
                    </div>
                    <div id="registerProduct">
                        <table id="table1">
	                        <input id="hiddenCategory" type="hidden" name="category">
	                        <input id="hiddenBrand" type="hidden" name="brand">
                            <tr>
                                <th>Model</th>
                                <td><input type="text" name="productCode" required></td>
                            </tr>
                            <tr>
                                <th>제품명</th>
                                <td><input type="text" name="productName" required></td>
                            </tr>
                            <tr>
                                <th>분류</th>
                                <td id="category">
                                    <input type="button" value="Tops">
                                    <input type="button" value="Bottoms">
                                    <input type="button" value="Outers">
                                    <input type="button" value="Footwear">
                                    <input type="button" value="Accessories">
                                </td>
                            </tr>
                            <tr id="brandChoose">
                                <th>브랜드</th>
                                <td class="brand topsBrand">
                                    <input type="button" value="Supreme">
                                    <input type="button" value="StoneIsland">
                                    <input type="button" value="RalphLauren">
                                    <input type="button" value="Stussy">
                                </td>
                                <td class="brand bottomsBrand" style="display:none;">
                                    <input type="button" value="CalvinKlein">
                                    <input type="button" value="Gucci">
                                    <input type="button" value="Adidas">
                                    <input type="button" value="Nike">
                                </td>
                                <td class="brand outersBrand" style="display:none;">
                                    <input type="button" value="Gucci">
                                    <input type="button" value="LouisVuitton">
                                    <input type="button" value="Nike">
                                    <input type="button" value="RalphLauren">
                                </td>
                                <td class="brand footwearBrand" style="display:none;">
                                    <input type="button" value="Adidas">
                                    <input type="button" value="Nike">
                                    <input type="button" value="Balenciaga">
                                    <input type="button" value="Jordan">
                                </td>
                                <td class="brand accessoriesBrand" style="display:none;">
                                    <input type="button" value="LouisVuitton">
                                    <input type="button" value="StoneIsland">
                                    <input type="button" value="Balenciaga">
                                    <input type="button" value="Gosha">
                                </td>
                            </tr>
                            <tr>
                                <th>사이즈</th>
                                <td id="size">
                                    <input type="text" name="size1">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" name="size2">
                                </td>
                            </tr>
                            <tr>
                                <th>컬러</th>
                                <td id="color">
                                    <input type="checkbox" id="color_black" name="color" value="black"><label for="color_black"></label>
                                    <input type="checkbox" id="color_gray" name="color" value="gray"><label for="color_gray"></label>
                                    <input type="checkbox" id="color_white" name="color" value="white"><label for="color_white"></label>
                                    <input type="checkbox" id="color_red" name="color" value="red"><label for="color_red"></label>
                                    <input type="checkbox" id="color_orange" name="color" value="orange"><label for="color_orange"></label>
                                    <input type="checkbox" id="color_yellow" name="color" value="yellow"><label for="color_yellow"></label>
                                    <input type="checkbox" id="color_green" name="color" value="green"><label for="color_green" id="greenColor"></label>
                                    <input type="checkbox" id="color_blue" name="color" value="blue"><label for="color_blue"></label>
                                    <input type="checkbox" id="color_purple" name="color" value="purple"><label for="color_purple"></label>
                                </td>
                            </tr>
                            <tr>
                                <th>유튜브 리뷰</th>
                                <td><input type="text" name="reviewYoutube"></td>
                            </tr>
                            <tr>
                            	<th>발매 정보</th>
                            	<td>
                            		발매일 : <input type="date" name="releaseDate" required> &nbsp;&nbsp;&nbsp;발매가 : <input type="text" name="releasePrice" required>
                            	</td>
                            </tr>
                            <tr>
                                <th>제품 상세 리뷰</th>
                                <td style="padding:0px;">
                                    <textarea name="reviewDetail" style="border:none; margin-top:5px; padding:10px"></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
	            <div id=submit>
	                <input type="submit" value="등록" onclick="return check();">
	            </div>
	            </form>
            </div>
        </div>
       <%@ include file= "../common/footer.jsp"%>
    </div>
    <script src="/LetsResell/resources/js/admin/admin_productEnroll.js" rel="javascript"></script>
</body>
</html>