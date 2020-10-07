/**
 * 
 */
$(function(){
	$(".product_img").click(function(){
		location.href="http://localhost:8888/LetsResell/detailSale.sa?saleNo=" +  $(this).parents("#product").children().eq(0).val() + "&currentPage=1";  
	});
	
	$("#wish_btn_img").click(function(){
		location.href="http://localhost:8888/LetsResell/wishList.wl?prNo=" + $(this).parents("#btn_box").children().eq(0).val();
	});
});