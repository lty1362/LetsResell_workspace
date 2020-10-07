<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.admin.model.vo.*" %>
<%	
	Admin_Product product = (Admin_Product)request.getAttribute("product");
	ArrayList<Admin_Image> images = (ArrayList<Admin_Image>)request.getAttribute("image");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<link rel="stylesheet" href="/LetsResell/resources/css/admin/admin_productDetail.css">
</head>
<body>
<div id="wrap" style="height:1900px;">
         <%@ include file= "../common/header.jsp"%>
        <div id="body">
			<div id="body_left">
                <%@ include file="admin_sideMenu.jsp" %>
	        </div>
            <div id="body_right">
	        <form action="productUpdate.admin" method="post" enctype="multipart/form-data">
	        	<input type="hidden" name="pno" value="<%=product.getPRno()%>">
                <div id="title">제품 수정</div>
                <div id="registerWrap">
                    <div id="registerImage">
                        <div id="registerImageMain" class="filebox" style="padding:0px;">
                        	<img src="<%=contextPath%>/<%=images.get(0).getProductImgUrl() + images.get(0).getProductImageChangeName()%>" id="titleImg" width="100%" height="100%">
	                        <label for="registerMainImage" id="main">메인 이미지 등록</label>
	                     	<input type="file" name="image1" id="registerMainImage" onchange="loadImg(this,1);">
                        </div>
                        <div id="registerImageDetail">
	                        <div id="registerImageDetail1" class="filebox" style="padding:0px;">
	                        	<%	
	                        		int test1 = 0;
	                        		for(int i = 1 ; i < images.size() ; i++){ 
                        			if(images.get(i).getProductDetailNo().equals("file2")){ 
    		        					test1 = 1;
                        		%>
		                        		<img src="<%=contextPath%>/<%=images.get(i).getProductImgUrl() + images.get(i).getProductImageChangeName()%>" id="detailImg1" width="100%" height="100%">
		                        	<% }else if(i == images.size()-1 && test1 == 0){ %>
		                        		<img src="" id="detailImg1" width="100%" height="100%">
	                        		<% } %>
                        		<% } %>
		                        <label for="registerDetailImage1" id="detail1">상세 이미지 등록</label>
		                     	<input type="file" name="image2" id="registerDetailImage1" onchange="loadImg(this,2);">
	                        </div>
	                        <div id="registerImageDetail2" class="filebox" style="padding:0px;">
	                        	<%
	                        		int test2 = 0;
	                        		for(int i = 1 ; i < images.size() ; i++){ 
                        			if(images.get(i).getProductDetailNo().equals("file3")){ 
    		        					test2 = 1;
                        		%>
		                        		<img src="<%=contextPath%>/<%=images.get(i).getProductImgUrl() + images.get(i).getProductImageChangeName()%>" id="detailImg2" width="100%" height="100%">
	                        		<% }else if(i == images.size()-1 && test2 == 0){  %>
		                        		<img src="" id="detailImg2" width="100%" height="100%">
	                        		<% } %>
                        		<% } %>
		                        <label for="registerDetailImage2" id="detail2">상세 이미지 등록</label>
		                     	<input type="file" name="image3" id="registerDetailImage2" onchange="loadImg(this,3);">
	                        </div>
	                        <div id="registerImageDetail3" class="filebox" style="padding:0px;">
		                        <%
                        			int test3 = 0;
		                        	for(int i = 1 ; i < images.size() ; i++){ 
                        			if(images.get(i).getProductDetailNo().equals("file4")){ 
    		        					test3 = 1;
                        		%>
	                        			<img src="<%=contextPath%>/<%=images.get(i).getProductImgUrl() + images.get(i).getProductImageChangeName()%>" id="detailImg3" width="100%" height="100%">
		                        	<% }else if(i == images.size()-1 && test3 == 0){ %>
		                        		<img src="" id="detailImg3" width="100%" height="100%">
		                        	<% } %>
	                        	<% } %>
		                        <label for="registerDetailImage3" id="detail3">상세 이미지 등록</label>
		                     	<input type="file" name="image4" id="registerDetailImage3" onchange="loadImg(this,4);">
	                        </div>
	                        <div id="registerImageDetail4" class="filebox" style="padding:0px;">
	                        	<%	
	                        		int test4 = 0;
	                        		for(int i = 1 ; i < images.size() ; i++){ 
                        			if(images.get(i).getProductDetailNo().equals("file5")){ 
    		        					test4 = 1;
                        		%>
                        				<img src="<%=contextPath%>/<%=images.get(i).getProductImgUrl() + images.get(i).getProductImageChangeName()%>" id="detailImg4" width="100%" height="100%">
	                        		<% }else if(i == images.size()-1 && test4 == 0){ %>
	                        			<img src="" id="detailImg4" width="100%" height="100%">
	                        		<% } %>
                        		<% } %>
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
                                <td><input type="text" name="productCode" value="<%=product.getPRmodel() %>" required></td>
                            </tr>
                            <tr>
                                <th>제품명</th>
                                <td><input type="text" name="productName" value="<%=product.getPRname() %>" required></td>
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
                                	<%if(!product.getPRsize().equals("-")){ %>
                                		<%String[] size = product.getPRsize().split("~"); %>
                                    	<input type="text" name="size1" value="<%=size[0]%>">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" name="size2" value="<%=size[1]%>">
                                    <% }else{ %>
                                    	<input type="text" name="size1">&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;<input type="text" name="size2">
                                    <% } %>
                                </td>
                            </tr>
                            <tr>
                                <th>컬러</th>
                                <td id="color">
                                    <input type="checkbox" id="color_black" name="color" value="black"><label for="color_black" id="blackColor"></label>
                                    <input type="checkbox" id="color_gray" name="color" value="gray"><label for="color_gray" id="grayColor"></label>
                                    <input type="checkbox" id="color_white" name="color" value="white"><label for="color_white" id="whiteColor"></label>
                                    <input type="checkbox" id="color_red" name="color" value="red"><label for="color_red" id="redColor"></label>
                                    <input type="checkbox" id="color_orange" name="color" value="orange"><label for="color_orange" id="orangeColor"></label>
                                    <input type="checkbox" id="color_yellow" name="color" value="yellow"><label for="color_yellow" id="yellowColor"></label>
                                    <input type="checkbox" id="color_green" name="color" value="green"><label for="color_green" id="greenColor"></label>
                                    <input type="checkbox" id="color_blue" name="color" value="blue"><label for="color_blue" id="blueColor"></label>
                                    <input type="checkbox" id="color_purple" name="color" value="purple"><label for="color_purple" id="purpleColor"></label>
                                </td>
                            </tr>
                            <tr>
                                <th>유튜브 리뷰</th>
                                <td><input type="text" name="reviewYoutube" value="<%=product.getPRreviewYoutube()%>"></td>
                            </tr>
                            <tr>
                            	<th>발매 정보</th>
                            	<td>
                            		발매일 : <input type="date" name="releaseDate" value="<%=product.getPRreleaseDate()%>"> &nbsp;&nbsp;&nbsp;발매가 : <input type="text" name="releasePrice" value="<%=product.getPRreleasePrice()%>">
                            	</td>
                            </tr>
                            <tr>
                                <th>제품 상세 리뷰</th>
                                <td style="padding:0px;">
                                    <textarea name="reviewDetail" cols="55" rows="10" style="border:none; margin-top:5px; padding:10px"><%=product.getPRreviewDetail() %></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
	            <div id=submit>
	                <input type="submit" value="수정" onclick="return check();">
	            </div>
	            </form>
            </div>
        </div>
       <%@ include file= "../common/footer.jsp"%>
    </div>
    <script src="/LetsResell/resources/js/admin/admin_productDetail.js" rel="javascript"></script>
    <script>
    	$(function(){
    		// 로딩 시 버튼 클릭
	   		// category
	   		<%if(product.getPRcategory().equals("Tops")){%>
	   			$("input[value=Tops]").click();
	   			<%if(product.getPRbrand().equals("Supreme")){%>
	   				$("input[value=Supreme]").click();
	   				$("input[value=Supreme]").css({background:"white",color:"black"});
	   			<% }else if(product.getPRbrand().equals("StoneIsland")){ %>
	   				$("input[value=StoneIsland]").click();
	   				$("input[value=StoneIsland]").css({background:"white",color:"black"});
   				<%}else if(product.getPRbrand().equals("RalphLauren")){%>
		   			$("input[value=RalphLauren]").click();
		   			$("input[value=StoneIsland]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Stussy")){%>
		   			$("input[value=Stussy]").click();
		   			$("input[value=Stussy]").css({background:"white",color:"black"});
		   		<%}%>
	   		<%}else if(product.getPRcategory().equals("Bottoms")){%>
	   			$("input[value=Bottoms]").click();
	   			<%if(product.getPRbrand().equals("CalvinKlein")){%>
		   			$("input[value=CalvinKlein]").click();
		   			$("input[value=CalvinKlein]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Gucci")){%>
		   			$("input[value=Gucci]").click();
		   			$("input[value=Gucci]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Adidas")){%>
		   			$("input[value=Adidas]").click();
		   			$("input[value=Adidas]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Nike")){%>
		   			$("input[value=Nike]").click();
		   			$("input[value=Nike]").css({background:"white",color:"black"});
		   		<%}%>
	   		<%}else if(product.getPRcategory().equals("Outers")){%>
	   			$("input[value=Outers]").click();
	   			<%if(product.getPRbrand().equals("Gucci")){%>
		   			$("input[value=Gucci]").click();
		   			$("input[value=Gucci]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("LouisVuitton")){%>
		   			$("input[value=LouisVuitton]").click();
		   			$("input[value=LouisVuitton]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Nike")){%>
		   			$("input[value=Nike]").click();
		   			$("input[value=Nike]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("RalphLauren")){%>
		   			$("input[value=RalphLauren]").click();
		   			$("input[value=RalphLauren]").css({background:"white",color:"black"});
		   		<%}%>
	   		<%}else if(product.getPRcategory().equals("Footwear")){%>
	   			$("input[value=Footwear]").click();
	   			<%if(product.getPRbrand().equals("Adidas")){%>
		   			$("input[value=Adidas]").click();
		   			$("input[value=Adidas]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Nike")){%>
		   			$("input[value=Nike]").click();
		   			$("input[value=Nike]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Balenciaga")){%>
		   			$("input[value=Balenciaga]").click();
		   			$("input[value=Balenciaga]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Jordan")){%>
		   			$("input[value=Jordan]").click();
		   			$("input[value=Jordan]").css({background:"white",color:"black"});
		   		<%}%>
	   		<%}else{%>
	   			$("input[value=Accessories]").click();
	   			<%if(product.getPRbrand().equals("LouisVuitton")){%>
		   			$("input[value=LouisVuitton]").click();
		   			$("input[value=LouisVuitton]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("StoneIsland")){%>
		   			$("input[value=StoneIsland]").click();
		   			$("input[value=StoneIsland]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Balenciaga")){%>
		   			$("input[value=Balenciaga]").click();
		   			$("input[value=Balenciaga]").css({background:"white",color:"black"});
		   		<%}else if(product.getPRbrand().equals("Gosha")){%>
		   			$("input[value=Gosha]").click();
		   			$("input[value=Gosha]").css({background:"white",color:"black"});
		   		<%}%>
	   		<%}%>
	   		
	   		// color
	   		<%if(product.getPRcolor().indexOf("black")>=0){%>
	   			$("#blackColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("gray")>=0){%>
	   			$("#grayColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("white")>=0){%>
	   			$("#whiteColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("red")>=0){%>
	   			$("#redColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("orange")>=0){%>
	   			$("#orangeColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("yellow")>=0){%>
	   			$("#yellowColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("green")>=0){%>
	   			$("#greenColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("blue")>=0){%>
	   			$("#blueColor").click();
	   		<%}%>
	   		<%if(product.getPRcolor().indexOf("purple")>=0){%>
	   			$("#purpleColor").click();
	   		<%}%>
    	});
    </script>
</body>
</html>