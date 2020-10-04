/**
 * 
 */
$(function(){
	$("#product_img").click(function(){
		console.log($(this).parent().eq(0).val());
		location.href="http://localhost:8888/LetsResell/saleList.sa?prNo=" + $(this).parents("#product").children().eq(0).val() + "&currentPage=1";  
	});
});