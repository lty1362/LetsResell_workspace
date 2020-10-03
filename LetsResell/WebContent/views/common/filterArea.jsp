<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/LetsResell/resources/css/common/filterArea.css">
</head>
<body>
<div class="filter_outer" align="center">

    <div id="close_outer" align="right">
        <img src="/LetsResell/resources/images/common/close.png" alt="close" width="100%" height="100%">
    </div>

    <h1 align="left">Filters</h1>

    <div id="filter_button" align="right">
        <button id="btn_search" class="filter_btn">Search</button>
        <button id="btn_clear" class="filter_btn" onclick="location.reload();">Clear All</button>
    </div>

    <div id="filter_hr">
        <hr>
    </div>
    <h3 align="left">Category</h3>
    
    <div id="filter_category">

        <div id="category_1">
            <div id="category_top">
                <img src="/LetsResell/resources/images/common/tshirt.png" alt="상의" width="80%" height="80%" onclick="cateTop();">
            </div>

            <div id="category_bottom">
                Tops
            </div>
        </div>
        
        <div id="category_2">
            <div id="category_top">
                <img src="/LetsResell/resources/images/common/jeans.png" alt="바지" width="80%" height="80%" onclick="cateBottom();">
            </div>
            
            <div id="category_bottom">
                Bottoms
            </div>
        </div>

        <div id="category_3">
            <div id="category_top">
                <img src="/LetsResell/resources/images/common/jacket.png" alt="겉옷" width="80%" height="80%" onclick="cateOuter();">
            </div>
            
            <div id="category_bottom">
                Outers
            </div>
        </div>

        <div id="category_4">
            <div id="category_top">
                <img src="/LetsResell/resources/images/common/sneakers.png" alt="신발" width="80%" height="80%" onclick="cateFoot();">
            </div>
            
            <div id="category_bottom">
                Footwear
            </div>
        </div>

        <div id="category_5">
            <div id="category_top">
                <img src="/LetsResell/resources/images/common/backpack.png" alt="악세서리" width="80%" height="80%" onclick="cateAcce();">
            </div>
            
            <div id="category_bottom">
                Accessory
            </div>
        </div>

    </div>

    <br>

    <div id="filter_hr">
        <hr>
    </div>

    <h3 align="left">Brand</h3>

    <div id="filter_brand">

        <div id="brand_1">
            <div id="brand_top">
                <img src="/LetsResell/resources/images/common/Supreme.png" width="100%" height="100%" onclick="clickBrand(1);">
            </div>

            <div id="brand_bottom">
                Supreme
            </div>
        </div>
        
        <div id="brand_2">
            <div id="brand_top">
                <img src="/LetsResell/resources/images/common/Stone_Island.png" width="100%" height="100%" onclick="clickBrand(2);">
            </div>
            
            <div id="brand_bottom">
                Stone Island
            </div>
        </div>

        <div id="brand_3">
            <div id="brand_top">
                <img src="/LetsResell/resources/images/common/Ralph_Lauren.png" width="100%" height="100%" onclick="clickBrand(3);">
            </div>
            
            <div id="brand_bottom">
                Ralph Lauren
            </div>
        </div>

        <div id="brand_4">
            <div id="brand_top">
                <img src="/LetsResell/resources/images/common/Stussy.png" width="100%" height="100%" onclick="clickBrand(4);">
            </div>
            
            <div id="brand_bottom">
                Stussy
            </div>
        </div>

    </div>
    
    <br>
    
    <div id="filter_hr">
        <hr>
    </div>

    <h3 align="left">Color</h3>

    <div id="filter_color">

        <div id="color_black" align="center">
            <img src="/LetsResell/resources/images/common/black.png" alt="검정" width="100%" height="100%" onclick="colorBtn('black');">
        </div>

        <div id="color_gray" align="center">
            <img src="/LetsResell/resources/images/common/gray.png" alt="회색" width="100%" height="100%" onclick="colorBtn('gray');">
        </div>

        <div id="color_white" align="center">
            <img src="/LetsResell/resources/images/common/white.png" alt="흰색" width="100%" height="100%" onclick="colorBtn('white');">
        </div>

        <div id="color_red" align="center">
            <img src="/LetsResell/resources/images/common/red.png" alt="빨강" width="100%" height="100%" onclick="colorBtn('red');">
        </div>
        
        <div id="color_orange" align="center">
            <img src="/LetsResell/resources/images/common/orange.png" alt="주황" width="100%" height="100%" onclick="colorBtn('orange');">
        </div>
        
        <div id="color_yellow" align="center">
            <img src="/LetsResell/resources/images/common/yellow.png" alt="노랑" width="100%" height="100%" onclick="colorBtn('yellow');">
        </div>
        
        <div id="color_green" align="center">
            <img src="/LetsResell/resources/images/common/green.png" alt="녹색" width="100%" height="100%" onclick="colorBtn('green');">
        </div>
        
        <div id="color_blue" align="center">
            <img src="/LetsResell/resources/images/common/blue.png" alt="파랑" width="100%" height="100%" onclick="colorBtn('blue');">
        </div>
        
        <div id="color_purple" align="center">
            <img src="/LetsResell/resources/images/common/purple.png" alt="보라" width="100%" height="100%" onclick="colorBtn('purple');">
        </div>

    </div>
    
    <br>
    
    <div id="filter_hr">
        <hr>
    </div>

    <h3 align="left">Price</h3>
    
    <div id="price_range" align="left">
    	<span id="price_value">￦ 1000</span> 
        <br>
        <input type="range" id="range_price" min="1000" max="1000000" step="1000" value="1000" oninput="rangePrice(this.value);">
    </div>

    <div id="price_btn" align="left">
        <button class="filter_btn" id="lowest_btn">Lowest First</button>
        <button class="filter_btn" id="highest_btn">Highest First</button>
    </div>
    
</div>
</body>
</html>