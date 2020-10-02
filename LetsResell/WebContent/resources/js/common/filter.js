/**
 * 제이쿼리
 */
$(function() {
    var category = "";
    var brand = "";
    var color = "";
    var price = "";
    var condition = "";

    $("#content_filter").click(function(){
        $(".filter_outer").show();
    });
    
    $("#close_outer").click(function(){
        $(".filter_outer").hide();
    });

    $("#price_btn>button").click(function(){
        // console.log($(this).attr("id") == $("#lowest_btn").attr("id"));
        if($(this).attr("id") == $("#lowest_btn").attr("id")) {
            $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
            $(this).next().css({"background-color":"white", "color":"black", "border":"none"});
        } else {
            $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
            $(this).prev().css({"background-color":"white", "color":"black", "border":"none"});
        }
    });

    $("#condition_btn>button").click(function(){
        // console.log($(this).attr("id") == $("#lowest_btn").attr("id"));
        if($(this).attr("id") == $("#new_btn").attr("id")) {
            $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
            $(this).next().css({"background-color":"white", "color":"black", "border":"none"});
        } else {
            $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
            $(this).prev().css({"background-color":"white", "color":"black", "border":"none"});
        }
    });

    $("#btn_search").click(function() {
        console.log(category);
        console.log(brand);
        console.log(color);
        console.log(price);
        console.log(condition);
        // location.href="filterSearch.do?category=" + category + "&brand=" + brand + "&color=" + color + "&price=" + price + "&condition=" + condition;
    });
});

// 상의 카테고리
function cateTop(){
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_1").children().eq(0).css("background-color","gray");
    
    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "imgs/Supreme.png");
    $("#brand_1").children().eq(1).text("Supreme");

    $("#brand_2").children().eq(0).children().attr("src", "imgs/Stone_Island.png");
    $("#brand_2").children().eq(1).text("Stone Island");

    $("#brand_3").children().eq(0).children().attr("src", "imgs/Ralph_Lauren.png");
    $("#brand_3").children().eq(1).text("Ralph Lauren");

    $("#brand_4").children().eq(0).children().attr("src", "imgs/Stussy.png");
    $("#brand_4").children().eq(1).text("Stussy");

    resetBrand();
}

// 하의 카테고리
function cateBottom(){
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_2").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "imgs/Calvin_Klein.png");
    $("#brand_1").children().eq(1).text("Calvin Klein");

    $("#brand_2").children().eq(0).children().attr("src", "imgs/Gucci.png");
    $("#brand_2").children().eq(1).text("Gucci");

    $("#brand_3").children().eq(0).children().attr("src", "imgs/Adidas.png");
    $("#brand_3").children().eq(1).text("Adidas");

    $("#brand_4").children().eq(0).children().attr("src", "imgs/Nike.png");
    $("#brand_4").children().eq(1).text("Nike");

    resetBrand();
}

// 겉옷 카테고리
function cateOuter(){
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_3").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "imgs/Gucci.png");
    $("#brand_1").children().eq(1).text("Gucci");

    $("#brand_2").children().eq(0).children().attr("src", "imgs/Luios_Vuitton.png");
    $("#brand_2").children().eq(1).text("Louis Vuitton");

    $("#brand_3").children().eq(0).children().attr("src", "imgs/Nike.png");
    $("#brand_3").children().eq(1).text("Nike");

    $("#brand_4").children().eq(0).children().attr("src", "imgs/Ralph_Lauren.png");
    $("#brand_4").children().eq(1).text("Ralph Lauren");

    resetBrand();
}

// 신발 카테고리
function cateFoot(){
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_4").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "imgs/Adidas.png");
    $("#brand_1").children().eq(1).text("Adidas");

    $("#brand_2").children().eq(0).children().attr("src", "imgs/Nike.png");
    $("#brand_2").children().eq(1).text("Nike");

    $("#brand_3").children().eq(0).children().attr("src", "imgs/Balenciaga.png");
    $("#brand_3").children().eq(1).text("Balenciaga");

    $("#brand_4").children().eq(0).children().attr("src", "imgs/Jordan.png");
    $("#brand_4").children().eq(1).text("Jordan");

    resetBrand();
}

// 악세 카테고리
function cateAcce(){
    // 카테고리
    $("#category_1").children().eq(0).css("background-color","white");
    $("#category_2").children().eq(0).css("background-color","white");
    $("#category_3").children().eq(0).css("background-color","white");
    $("#category_4").children().eq(0).css("background-color","white");
    $("#category_5").children().eq(0).css("background-color","white");

    $("#category_5").children().eq(0).css("background-color","gray");

    // 브랜드
    $("#brand_1").children().eq(0).children().attr("src", "imgs/Luios_Vuitton.png");
    $("#brand_1").children().eq(1).text("Louis Vuitton");

    $("#brand_2").children().eq(0).children().attr("src", "imgs/Stone_Island.png");
    $("#brand_2").children().eq(1).text("Stone Island");

    $("#brand_3").children().eq(0).children().attr("src", "imgs/Balenciaga.png");
    $("#brand_3").children().eq(1).text("Balenciaga");

    $("#brand_4").children().eq(0).children().attr("src", "imgs/Gosha.png");
    $("#brand_4").children().eq(1).text("Gosha");

    resetBrand();
}

// 브랜드 클릭
function clickBrand(index){
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
    var price = "￦ " + value
    $("#price_value").text(price);
}