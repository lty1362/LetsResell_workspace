<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/LetsResell/resources/css/common/filter.css" rel="stylesheet">
<script src="/LetsResell/resources/js/common/filter.js" rel="javascript"></script>
</head>
<body>
<div id="content">

        <div id="content_filter">
            <div id="content_filter_top" align="center">
                <img src="/LetsResell/resources/images/common/equalizer.png" alt="filters" width="40%" height="40%">
            </div>
     
            <div id="content_filter_bottom" align="center">
                <b>filters</b>
            </div>
        </div>

        <div class="outer" align="center">

            <div id="close_outer" align="right">
                <img src="/LetsResell/resources/images/common/close.png" alt="close" width="100%" height="100%">
            </div>

            <h1 align="left">Filters</h1>

            <div id="filter_button" align="right">
                <button id="btn_search" class="filter_btn">Search</button>
                <button id="btn_clear" class="filter_btn">Clear All</button>
            </div>
    
            <div id="filter_hr">
                <hr>
            </div>
            <h3 align="left">Category</h3>
            
            <div id="filter_category">
    
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="상의" width="100%" height="100%">
                    </div>
    
                    <div id="category_bottom">
                        Tops
                    </div>
                </div>
                
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="바지" width="100%" height="100%">
                    </div>
                    
                    <div id="category_bottom">
                        Bottoms
                    </div>
                </div>
    
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="겉옷" width="100%" height="100%">
                    </div>
                    
                    <div id="category_bottom">
                        Outers
                    </div>
                </div>
    
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="신발" width="100%" height="100%">
                    </div>
                    
                    <div id="category_bottom">
                        Footwear
                    </div>
                </div>
    
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="악세서리" width="100%" height="100%">
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
    
            <div id="filter_category">
    
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="나이키" width="100%" height="100%">
                    </div>
    
                    <div id="category_bottom">
                        Nike
                    </div>
                </div>
                
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="아디다스" width="100%" height="100%">
                    </div>
                    
                    <div id="category_bottom">
                        Adidas
                    </div>
                </div>
    
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="발렌시아" width="100%" height="100%">
                    </div>
                    
                    <div id="category_bottom">
                        Balenciaga
                    </div>
                </div>
    
                <div id="category">
                    <div id="category_top">
                        <img src="" alt="컨버스" width="100%" height="100%">
                    </div>
                    
                    <div id="category_bottom">
                        Converse
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
                    <img src="/LetsResell/resources/images/common/black.png" alt="검정" width="100%" height="100%">
                </div>
    
                <div id="color_gray" align="center">
                    <img src="/LetsResell/resources/images/common/gray.png" alt="회색" width="100%" height="100%">
                </div>
    
                <div id="color_white" align="center">
                    <img src="/LetsResell/resources/images/common/white.png" alt="흰색" width="100%" height="100%">
                </div>
    
                <div id="color_red" align="center">
                    <img src="/LetsResell/resources/images/common/red.png" alt="빨강" width="100%" height="100%">
                </div>
                
                <div id="color_orange" align="center">
                    <img src="/LetsResell/resources/images/common/orange.png" alt="주황" width="100%" height="100%">
                </div>
                
                <div id="color_yellow" align="center">
                    <img src="/LetsResell/resources/images/common/yellow.png" alt="노랑" width="100%" height="100%">
                </div>
                
                <div id="color_green" align="center">
                    <img src="/LetsResell/resources/images/common/green.png" alt="녹색" width="100%" height="100%">
                </div>
                
                <div id="color_blue" align="center">
                    <img src="/LetsResell/resources/images/common/blue.png" alt="파랑" width="100%" height="100%">
                </div>
                
                <div id="color_purple" align="center">
                    <img src="/LetsResell/resources/images/common/purple.png" alt="보라" width="100%" height="100%">
                </div>
    
            </div>
            
            <br>
            
            <div id="filter_hr">
                <hr>
            </div>
    
            <h3 align="left">Price</h3>
            
            <div id="price_range" align="left">
                <input type="range" name="" max="1000000" step="1000">
            </div>
    
            <div id="price_btn" align="left">
                <button class="filter_btn">Lowest First</button>
                <button class="filter_btn">Highest First</button>
            </div>
    
            <br>
            
            <div id="filter_hr">
                <hr>
            </div>
    
            <h3 align="left">Condition</h3>
    
            <div id="condition_btn" align="left">
                <button class="filter_btn">New</button>
                <button class="filter_btn">Used</button>
            </div>
    
        </div>
     </div>
</body>
</html>