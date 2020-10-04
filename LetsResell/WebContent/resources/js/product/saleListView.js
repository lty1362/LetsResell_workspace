/**
 * 
 */
$(function(){
	$("#product_img").click(function(){
		location.href="http://localhost:8888/LetsResell/detailSale.sa?saleNo=" + $("#prNo").val() + "&currentPage=1";  
	});
});