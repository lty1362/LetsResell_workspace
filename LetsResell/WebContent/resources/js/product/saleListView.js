/**
 * 
 */
$(function(){
	$("#product_img").click(function(){
		location.href="http://localhost:8888/LetsResell/detailSale.sa?saleNo=" +  $(this).parents("#product").children().eq(0).val() + "&currentPage=1";  
	});
});