/**
 * 
 */
$(function() {
    $("#content_filter").click(function(){
        $(".filter_outer").show();
    });
    
    $("#close_outer").click(function(){
        $(".filter_outer").hide();
    });
    
    $(".filter_btn").click(function(){
        $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
    });
});