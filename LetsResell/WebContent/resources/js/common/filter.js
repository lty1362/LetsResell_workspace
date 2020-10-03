var filter = {
    category: "",
    brand: "",
    color: "",
    price: "",
    order: "null"
}

$(function() {
    $("#content_filter").click(function(){
        $(".filter_outer").show();
    });
    
    $("#close_outer").click(function(){
        $(".filter_outer").hide();
    });

    // price button
    $("#price_btn>button").click(function(){
        if($(this).attr("id") == $("#lowest_btn").attr("id")) {
        	filter.order = "asc";
            $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
            $(this).next().css({"background-color":"white", "color":"black", "border":"none"});
        } else {
        	filter.order = "desc";
            $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
            $(this).prev().css({"background-color":"white", "color":"black", "border":"none"});
        }
    });

    $("#btn_search").click(function() {
        // console.log(filter.category);
        // console.log(filter.brand);
        // console.log(filter.color);
        // console.log(filter.price);
        // console.log(filter.order);
        location.href = "filterSearch.do?category=" + filter.category + "&brand=" + filter.brand + "&color=" + filter.color 
                                      + "&price=" + filter.price + "&order=" + filter.order + "&currentPage=1";
    });
});

// 상의 카테고리
function cateTop(){
    filter.category = "Tops";
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_1").children().eq(0).css("background-color","gray");
    
    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Supreme.png");
    $("#brand_1").children().eq(1).text("Supreme");

    $("#brand_2").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Stone_Island.png");
    $("#brand_2").children().eq(1).text("Stone Island");

    $("#brand_3").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Ralph_Lauren.png");
    $("#brand_3").children().eq(1).text("Ralph Lauren");

    $("#brand_4").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Stussy.png");
    $("#brand_4").children().eq(1).text("Stussy");

    resetBrand();
}

// 하의 카테고리
function cateBottom(){
    filter.category = "Bottoms";
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_2").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Calvin_Klein.png");
    $("#brand_1").children().eq(1).text("Calvin Klein");

    $("#brand_2").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Gucci.png");
    $("#brand_2").children().eq(1).text("Gucci");

    $("#brand_3").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Adidas.png");
    $("#brand_3").children().eq(1).text("Adidas");

    $("#brand_4").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Nike.png");
    $("#brand_4").children().eq(1).text("Nike");

    resetBrand();
}

// 겉옷 카테고리
function cateOuter(){
    filter.category = "Outers";
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_3").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Gucci.png");
    $("#brand_1").children().eq(1).text("Gucci");

    $("#brand_2").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Luios_Vuitton.png");
    $("#brand_2").children().eq(1).text("Louis Vuitton");

    $("#brand_3").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Nike.png");
    $("#brand_3").children().eq(1).text("Nike");

    $("#brand_4").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Ralph_Lauren.png");
    $("#brand_4").children().eq(1).text("Ralph Lauren");

    resetBrand();
}

// 신발 카테고리
function cateFoot(){
    filter.category = "Footwear";
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_4").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Adidas.png");
    $("#brand_1").children().eq(1).text("Adidas");

    $("#brand_2").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Nike.png");
    $("#brand_2").children().eq(1).text("Nike");

    $("#brand_3").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Balenciaga.png");
    $("#brand_3").children().eq(1).text("Balenciaga");

    $("#brand_4").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Jordan.png");
    $("#brand_4").children().eq(1).text("Jordan");

    resetBrand();
}

// 악세 카테고리
function cateAcce(){
    filter.category = "Accessory";	
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_5").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Luios_Vuitton.png");
    $("#brand_1").children().eq(1).text("Louis Vuitton");

    $("#brand_2").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Stone_Island.png");
    $("#brand_2").children().eq(1).text("Stone Island");

    $("#brand_3").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Balenciaga.png");
    $("#brand_3").children().eq(1).text("Balenciaga");

    $("#brand_4").children().eq(0).children().attr("src", "/LetsResell/resources/images/common/Gosha.png");
    $("#brand_4").children().eq(1).text("Gosha");

    resetBrand();
}

// 브랜드 클릭
function clickBrand(index){
    filter.brand = $("#brand_" + index).children().eq(1).text().trim();
    
    $("#brand_1").children().eq(0).css("background-color","white");
    $("#brand_2").children().eq(0).css("background-color","white");
    $("#brand_3").children().eq(0).css("background-color","white");
    $("#brand_4").children().eq(0).css("background-color","white");
    $("#brand_5").children().eq(0).css("background-color","white");

    $("#brand_" + index).children().eq(0).css("background-color","gray");
}

// 브랜드 리셋
function resetBrand(){
    $("#brand_1").children().eq(0).css("background-color","white");
    $("#brand_2").children().eq(0).css("background-color","white");
    $("#brand_3").children().eq(0).css("background-color","white");
    $("#brand_4").children().eq(0).css("background-color","white");
    $("#brand_5").children().eq(0).css("background-color","white");
}

// 컬러 버튼
function colorBtn(color) {
    filter.color = color;
    color1 = color;
    switch(color){
        case 'black':
            $("#color_" + color).css("border", "1px solid white");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'gray': 
            $("#color_" + color).css("border", "1px solid gray");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'white': 
            $("#color_" + color).css("border", "1px solid white");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'red': 
            $("#color_" + color).css("border", "1px solid red");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'orange': 
            $("#color_" + color).css("border", "1px solid orange");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'yellow': 
            $("#color_" + color).css("border", "1px solid yellow");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'green': 
            $("#color_" + color).css("border", "1px solid green");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'blue':
            $("#color_" + color).css("border", "1px solid blue");
            $("#color_" + color).siblings().css("border", "none");
            return;
        case 'purple':
            $("#color_" + color).css("border", "1px solid purple");
            $("#color_" + color).siblings().css("border", "none");
            return;
    }
}

// range
function rangePrice(value) {
    filter.price = value;
    var price = "￦ " + value
    $("#price_value").text(price);
}